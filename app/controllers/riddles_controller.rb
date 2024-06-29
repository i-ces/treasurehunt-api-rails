# frozen_string_literal: true

class RiddlesController < ApplicationController
  before_action :authenticate_user!, only: %i[index destroy check_answer]
  before_action :set_riddle, only: %i[show update destroy check_answer]
  before_action :set_trap_count, only: %i[check_answer index]

  # GET /riddles
  def index
    if params[:level_id]
      @trap_count = TrapCount.find_or_create_by!(user: current_user, level_id: params[:level_id])
      @riddles = Riddle.where(level_id: params[:level_id])
      if @trap_count.trap_count >= 2
        @riddles = @riddles.where(is_trap: false)
      end
    end

      solved_riddle_ids = current_user.solved_riddles.pluck(:riddle_id)
      @riddles = @riddles.where.not(id: solved_riddle_ids)

    render json: @riddles
  end

  # GET /riddles/:id
  def show
    render json: @riddle
  end

  # POST /riddles
  def create
    @riddle = Riddle.new(riddle_params)
    if @riddle.save
      render json: @riddle, status: :created, location: @riddle
    else
      render json: @riddle.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /riddles/:id
  def update
    if @riddle.update(riddle_params)
      render json: @riddle
    else
      render json: @riddle.errors, status: :unprocessable_entity
    end
  end

  # DELETE /riddles/:id
  def destroy
    @riddle.destroy
    head :no_content
  end

  # POST /riddles/:id/check_answer
  def check_answer
    if @riddle.answer == params[:answer]
      handle_correct_answer(@riddle)
    else
      render json: { status: 'incorrect' }
    end
  end

  private

  def handle_correct_answer(riddle)
    SolvedRiddle.create(user: current_user, riddle: riddle)
    if riddle.is_trap?
      @trap_count.trap_count ||= 0
      @trap_count.increment!(:trap_count)
      render json: { status: 'trap' }
      return
    end

    next_level_id = find_next_level_id(riddle.level.id)
    user_level_progress = UserLevelProgress.find_or_initialize_by(user: current_user)
    user_level_progress.update!(reached_at: Time.current, level_id: next_level_id)

    render json: { status: 'correct' }
  end

  def find_next_level_id(current_level_id)
    next_level = Level.where("id > ?", current_level_id).order(:id).first
    next_level ? next_level.id : nil
  end

  def set_riddle
    @riddle = Riddle.find(params[:id])
  end

  def riddle_params
    params.permit(:question, :answer, :is_trap, :level_id)
  end

  def set_trap_count
    if params[:level_id]
      @trap_count = TrapCount.find_or_create_by!(user: current_user, level_id: params[:level_id])
    elsif @riddle
      @trap_count = TrapCount.find_or_create_by!(user: current_user, level_id: @riddle.level_id)
    end
  end
end
