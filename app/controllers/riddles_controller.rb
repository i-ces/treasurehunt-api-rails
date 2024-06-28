# frozen_string_literal: true

class RiddlesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_riddle, only: %i[show update destroy check_answer]

  # GET /riddles
  def index
    @riddles = if params[:level_id]
                 Riddle.where(level_id: params[:level_id])
               else
                 Riddle.all
               end
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
    @riddle = Riddle.find(params[:id])
    if @riddle.answer == params[:answer]
      handle_correct_answer(@riddle)
    else
      render json: { status: 'incorrect' }
    end
  end

  private

 def handle_correct_answer(riddle)
  if riddle.is_trap?
    trap_count = TrapCount.find_or_initialize_by(user: current_user, riddle: riddle, level: riddle.level)
    trap_count.increment!(:trap_count)
    render json:{
      status: 'trap'
    }
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
    params.require(:riddle).permit(:question, :answer, :is_trap, :level_id)
  end
end
