# == Schema Information
#
# Table name: contracts
#
#  id           :integer          not null, primary key
#  enologist_id :integer
#  magazine_id  :integer
#  position_id  :integer
#
# Indexes
#
#  index_contracts_on_enologist_id  (enologist_id)
#  index_contracts_on_magazine_id   (magazine_id)
#  index_contracts_on_position_id   (position_id)
#
class Contract < ApplicationRecord
  belongs_to :enologist
  belongs_to :magazine
  belongs_to :position

  validates_uniqueness_of :enologist, scope: [:magazine_id, :position_id]
  validates_uniqueness_of :magazine, scope: [:enologist_id, :position_id]
  validates_uniqueness_of :position, scope: [:magazine_id, :enologist_id]

  private

end
