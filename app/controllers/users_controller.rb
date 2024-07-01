# frozen_string_literal: true

class UsersController < ApplicationController
  before_action :authenticate_user!

  def leaderboard
    @leaderboard = UserLevelProgress
                   .select('user_id, max(level_id) as level_id, min(reached_at) as reached_at')
                   .group('user_id')
                   .order('level_id DESC, reached_at ASC')
                   .includes(:user)

    render json: @leaderboard.map { |entry| { user: entry.user, level: entry.level_id, reached_at: entry.reached_at } }
  end

  def current_level
    @current_level = UserLevelProgress.find_by(user: current_user)

    render json: @current_level
  end
end
