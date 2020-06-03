class Strain < ApplicationRecord
  has_many :assemblies, dependent: :destroy
  has_many :wines, through: :assemblies
end
