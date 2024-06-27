# frozen_string_literal: true

# == Schema Information
#
# Table name: user_level_progresses
#
#  id         :bigint           not null, primary key
#  reached_at :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  level_id   :bigint           not null
#  user_id    :bigint           not null
#
# Indexes
#
#  index_user_level_progresses_on_level_id  (level_id)
#  index_user_level_progresses_on_user_id   (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (level_id => levels.id)
#  fk_rails_...  (user_id => users.id)
#
class UserLevelProgress < ApplicationRecord
  belongs_to :user
  belongs_to :level
end
