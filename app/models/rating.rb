# == Schema Information
#
# Table name: ratings
#
#  id           :integer          not null, primary key
#  score        :float
#  enologist_id :integer
#  wine_id      :integer
#
# Indexes
#
#  index_ratings_on_enologist_id  (enologist_id)
#  index_ratings_on_wine_id       (wine_id)
#
class Rating < ApplicationRecord
  belongs_to :wine
  belongs_to :enologist

  validates :score, numericality: {only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 100}
  validates_uniqueness_of :wine, scope: :enologist_id
  validates_uniqueness_of :enologist, scope: :wine_id 
end
