class LevelsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_level, only: %i[show destroy]

  # GET /levels
  def index
    @levels = Level.all
    render json: @levels, include: :riddles
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
