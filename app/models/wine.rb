class Wine < ApplicationRecord
  has_many :assemblies, dependent: :destroy
  has_many :strains, through: :assemblies
end
