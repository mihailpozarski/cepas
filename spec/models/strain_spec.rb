# == Schema Information
#
# Table name: strains
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'rails_helper'

RSpec.describe Strain, type: :model do
  let(:strain_1) { Strain.create(name: 'potato') }
  let(:strain_2) { Strain.create(name: 'potato') }

  it { should validate_uniqueness_of(:name) }
  it { should_not allow_value(nil).for(:name) }
  it { should_not allow_value('').for(:name) }
  it { should allow_value('Carmenere').for(:name) }
end
