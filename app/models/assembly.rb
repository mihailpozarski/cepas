class Assembly < ApplicationRecord
  belongs_to :wine
  belongs_to :strain

  attr_accessor :strain_name
end
