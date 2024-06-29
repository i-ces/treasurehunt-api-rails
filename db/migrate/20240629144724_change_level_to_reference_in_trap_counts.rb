class ChangeLevelToReferenceInTrapCounts < ActiveRecord::Migration[7.0]
  def change
    remove_column :trap_counts, :level, :integer
    add_reference :trap_counts, :level, null: false, foreign_key: true
  end
end
