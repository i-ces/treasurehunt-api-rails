# frozen_string_literal: true

class LevelsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_level, only: %i[show destroy]

  # GET /levels
 def index
    levels = Level.all
    user_progress = current_user.user_progress
    current_level = user_progress.level
    progress = user_progress.progress

    levels_status = levels.map do |level|
      {
        level: level.id,
        title: level.title,
        level_int: level.level_int,
        riddles: level.riddles.map do |riddle|
          if level.id < current_level
            { id: riddle.id, status: 'solved' }
          elsif level.id == current_level && progress >= level.riddles.index(riddle)
            { id: riddle.id, status: 'current' }
          else
            { id: riddle.id, status: 'locked' }
          end
        end
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
    params.require(:level).permit(:title, :level_int)
  end
end
