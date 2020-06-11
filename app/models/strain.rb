# == Schema Information
#
# Table name: strains
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Strain < ApplicationRecord
  has_many :assemblies, dependent: :destroy
  has_many :wines, through: :assemblies

  validates :name, presence: true, uniqueness: true
end
