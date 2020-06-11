# == Schema Information
#
# Table name: positions
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Position < ApplicationRecord
  has_many :contracts
  has_many :magazines, through: :contracts
  has_many :enologists, through: :contracts
end
