# frozen_string_literal: true

class RemoveRiddleFromTrap < ActiveRecord::Migration[7.0]
  def change
    remove_reference :trap_counts, :riddle, foreign_key: true
  end
end
