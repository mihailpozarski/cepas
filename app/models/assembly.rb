# == Schema Information
#
# Table name: assemblies
#
#  id         :integer          not null, primary key
#  percentage :float
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  strain_id  :integer
#  wine_id    :integer
#
# Indexes
#
#  index_assemblies_on_strain_id  (strain_id)
#  index_assemblies_on_wine_id    (wine_id)
#
class Assembly < ApplicationRecord
  belongs_to :wine
  belongs_to :strain

  validates_uniqueness_of :strain, scope: [:wine]
end
