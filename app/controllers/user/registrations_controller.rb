# frozen_string_literal: true

module User
  class RegistrationsController < ApplicationController
    def create
      @user = User.create!(user_params)
      render json: @user
    end

    private

    def user_params
      params.permit(:email, :password, :name, :image)
    end
  end
end
