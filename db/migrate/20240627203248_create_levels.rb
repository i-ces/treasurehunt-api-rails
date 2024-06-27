# frozen_string_literal: true

class CreateLevels < ActiveRecord::Migration[7.0]
  def change
    create_table :levels do |t|
      t.string :title
      t.integer :level_int

      t.timestamps
    end
  end
end
