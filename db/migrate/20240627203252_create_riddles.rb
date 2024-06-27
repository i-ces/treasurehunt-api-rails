class CreateRiddles < ActiveRecord::Migration[7.0]
  def change
    create_table :riddles do |t|
      t.string :question
      t.string :answer
      t.boolean :is_trap, default: false
      t.references :level, null: false, foreign_key: true

      t.timestamps
    end
  end
end
