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
require 'test_helper'

class AssemblyTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
