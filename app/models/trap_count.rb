# frozen_string_literal: true

# == Schema Information
#
# Table name: trap_counts
#
#  id         :bigint           not null, primary key
#  trap_count :integer          default(0)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  level_id   :bigint           not null
#  user_id    :bigint           not null
#
# Indexes
#
#  index_trap_counts_on_level_id  (level_id)
#  index_trap_counts_on_user_id   (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (level_id => levels.id)
#  fk_rails_...  (user_id => users.id)
#
class TrapCount < ApplicationRecord
  belongs_to :user
  belongs_to :level
  validates :user_id, uniqueness: { scope: :level_id }
end
