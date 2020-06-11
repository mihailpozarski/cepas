# == Schema Information
#
# Table name: magazines
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Magazine < ApplicationRecord
  has_many :contracts
  has_many :enologists, through: :contracts
  has_many :positions, through: :contracts
end
