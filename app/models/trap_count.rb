# frozen_string_literal: true

# == Schema Information
#
# Table name: trap_counts
#
#  id         :bigint           not null, primary key
#  level      :integer          not null
#  trap_count :integer          default(0)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  riddle_id  :bigint           not null
#  user_id    :bigint           not null
#
# Indexes
#
#  index_trap_counts_on_riddle_id                        (riddle_id)
#  index_trap_counts_on_user_id                          (user_id)
#  index_trap_counts_on_user_id_and_riddle_id_and_level  (user_id,riddle_id,level) UNIQUE
#
# Foreign Keys
#
#  fk_rails_...  (riddle_id => riddles.id)
#  fk_rails_...  (user_id => users.id)
#
class TrapCount < ApplicationRecord
  belongs_to :user
  belongs_to :riddle
  validates :user_id, uniqueness: { scope: %i[riddle_id level] }
end
