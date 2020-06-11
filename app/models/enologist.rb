# == Schema Information
#
# Table name: enologists
#
#  id          :integer          not null, primary key
#  age         :integer
#  name        :string
#  nationality :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Enologist < ApplicationRecord
  has_many :contracts
  has_many :ratings
  has_many :magazines, through: :contracts
  has_many :positions, through: :contracts
  has_many :wines, through: :ratings
end
