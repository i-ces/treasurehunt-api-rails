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
    if riddle.trap
      trap_count = TrapCount.find_or_initialize_by(user: current_user, riddle: riddle, level: riddle.level)
      trap_count.increment!(:trap_count)
      make_riddles_unavailable(riddle.level) if trap_count.trap_count >= 2
    end

    UserProgress.create(user: current_user, riddle: riddle, solved_at: Time.current)
    render json: { status: 'correct' }
  end

  def make_riddles_unavailable(level)
   Riddle.where(level: level).each do |riddle|
      UserProgress.find_or_create_by(user: current_user, riddle: riddle).update(available: false)
    end
  end

  def set_riddle
    @riddle = Riddle.find(params[:id])
  end

  def riddle_params
    params.require(:riddle).permit(:question, :answer, :is_trap, :level_id)
  end
end
