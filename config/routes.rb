# frozen_string_literal: true

Rails.application.routes.draw do
  mount_devise_token_auth_for "User",
  at: "auth",
  controllers: {
    registrations: "user/registrations",
  }
  resources :levels
  resources :riddles, only: %i[index show create update destroy] do
    member do
      post 'check_answer'
    end
  end
  get 'leaderboard', to: 'users#leaderboard'
  get 'myposition', to: 'users#current_level'
end
