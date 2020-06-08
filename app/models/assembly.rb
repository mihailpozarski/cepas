class Assembly < ApplicationRecord
  belongs_to :wine
  belongs_to :strain

  validates_uniqueness_of :strain, scope: [:wine]
end
