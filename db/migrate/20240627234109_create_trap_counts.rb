# frozen_string_literal: true

class CreateTrapCounts < ActiveRecord::Migration[7.0]
  def change
    create_table :trap_counts do |t|
      t.references :user, null: false, foreign_key: true
      t.references :riddle, null: false, foreign_key: true
      t.integer :level, null: false
      t.integer :trap_count, default: 0

      t.timestamps
    end

    add_index :trap_counts, %i[user_id riddle_id level], unique: true
  end
end
