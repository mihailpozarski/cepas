# == Schema Information
#
# Table name: enologists
#
#  id          :integer          not null, primary key
#  age         :integer
#  name        :string
#  nationality :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require 'test_helper'

class EnologistTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
