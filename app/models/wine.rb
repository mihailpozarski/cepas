class Wine < ApplicationRecord
  has_many :assemblies, inverse_of: :wine
  has_many :ratings
  has_many :strains, through: :assemblies
  has_many :enologists, through: :ratings

  accepts_nested_attributes_for :assemblies, reject_if: ->(attributes) { attributes['percentage'].blank?}

  validates_with PercentageValidator

  def score_average
    return 0 if ratings.count.zero?

    total = ratings.inject(0) { |t,v| t + v.score }
    total.to_i / ratings.count
  end
end
