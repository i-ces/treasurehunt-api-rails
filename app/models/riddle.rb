# == Schema Information
#
# Table name: riddles
#
#  id         :bigint           not null, primary key
#  answer     :string
#  is_trap    :boolean          default(FALSE)
#  question   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  level_id   :bigint           not null
#
# Indexes
#
#  index_riddles_on_level_id  (level_id)
#
# Foreign Keys
#
#  fk_rails_...  (level_id => levels.id)
#
class Riddle < ApplicationRecord
  belongs_to :level
end
