class Contract < ApplicationRecord
  belongs_to :enologist
  belongs_to :magazine
  belongs_to :position

  validates_uniqueness_of :enologist, scope: [:magazine_id, :position_id]
  validates_uniqueness_of :magazine, scope: [:enologist_id, :position_id]
  validates_uniqueness_of :position, scope: [:magazine_id, :enologist_id]

  private

end
