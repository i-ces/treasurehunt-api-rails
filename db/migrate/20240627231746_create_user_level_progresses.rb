# frozen_string_literal: true

class CreateUserLevelProgresses < ActiveRecord::Migration[7.0]
  def change
    create_table :user_level_progresses do |t|
      t.references :user, null: false, foreign_key: true
      t.references :level, null: false, foreign_key: true
      t.datetime :reached_at

      t.timestamps
    end
  end
end
