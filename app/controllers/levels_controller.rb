# frozen_string_literal: true

class LevelsController < ApplicationController
  # before_action :authenticate_user!
  before_action :set_level, only: %i[show destroy update]

  # GET /levels
 def index
    levels = Level.all
    user_progress = current_user.user_level_progress
    current_level = user_progress.level_id

    levels_status = levels.map do |level|
      level_status = if level.id < current_level
                   'solved'
                 elsif level.id == current_level
                   'current'
                 else
                   'locked'
                 end
      {
        level: level.id,
        title: level.title,
        level_int: level.level_int,
        status: level_status
      }
    end

    render json: levels_status
  end

  # GET /levels/:id
  def show
    render json: @level, include: :riddles
  end

  # POST /levels
  def create
    @level = Level.new(level_params)
    if @level.save
      render json: @level, status: :created, location: @level
    else
      render json: @level.errors, status: :unprocessable_entity
    end
  end

  # PATCH /levels/:id
  def update
    if @level.update!(level_params)
      render json: @level
    else
      render json: @level.errors, status: :unprocessable_entity
    end
  end

  # DELETE /levels/:id
  def destroy
    @level.destroy
    head :no_content
  end

  private

  def set_level
    @level = Level.find(params[:id])
  end

  def level_params
    params.permit(:title, :level_int)
  end
end
