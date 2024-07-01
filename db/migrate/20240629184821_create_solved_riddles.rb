# frozen_string_literal: true

class CreateSolvedRiddles < ActiveRecord::Migration[7.0]
  def change
    create_table :solved_riddles do |t|
      t.references :user, null: false, foreign_key: true
      t.references :riddle, null: false, foreign_key: true

      t.timestamps
    end

    add_index :solved_riddles, %i[user_id riddle_id], unique: true
  end
end
