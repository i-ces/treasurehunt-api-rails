# frozen_string_literal: true

# == Schema Information
#
# Table name: levels
#
#  id         :bigint           not null, primary key
#  level_int  :integer
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Level < ApplicationRecord
  has_many :riddles, dependent: :destroy
end
