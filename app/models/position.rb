class Position < ApplicationRecord
  has_many :contracts
  has_many :magazines, through: :contracts
  has_many :enologists, through: :contracts
end
