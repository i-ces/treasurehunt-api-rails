# frozen_string_literal: true

class User::RegistrationsController < ApplicationController
  def create
    @user = User.create!(user_params)
    render json:{
      user: @user,
      image: @user.profile_image.service_url
    }
  end
  private
    def user_params
      params.permit(:email, :password, :name, :profile_image)
    end
end
