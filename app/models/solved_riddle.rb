# frozen_string_literal: true

# == Schema Information
#
# Table name: solved_riddles
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  riddle_id  :bigint           not null
#  user_id    :bigint           not null
#
# Indexes
#
#  index_solved_riddles_on_riddle_id              (riddle_id)
#  index_solved_riddles_on_user_id                (user_id)
#  index_solved_riddles_on_user_id_and_riddle_id  (user_id,riddle_id) UNIQUE
#
# Foreign Keys
#
#  fk_rails_...  (riddle_id => riddles.id)
#  fk_rails_...  (user_id => users.id)
#
class SolvedRiddle < ApplicationRecord
  belongs_to :user
  belongs_to :riddle

  validates :user_id, uniqueness: { scope: :riddle_id }
end
