class RiddlesController < ApplicationController
  # before_action :authenticate_user!
  before_action :set_riddle, only: [:show, :update, :destroy, :check_answer]

  # GET /riddles
  def index
    if params[:level_id]
      @riddles = Riddle.where(level_id: params[:level_id])
    else
      @riddles = Riddle.all
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
    if params[:answer].present? && @riddle.answer.downcase == params[:answer].downcase
      render json: { correct: true }
    else
      render json: { correct: false }
    end
  end


  private

  def set_riddle
    @riddle = Riddle.find(params[:id])
  end

  def riddle_params
    params.require(:riddle).permit(:question, :answer, :is_trap, :level_id)
  end
end
