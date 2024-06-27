# frozen_string_literal: true

Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'
  resources :levels
  resources :riddles, only: [:index, :show, :create, :update, :destroy] do
    member do
      post 'check_answer'
    end
  end
end
