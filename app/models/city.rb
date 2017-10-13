class City < ApplicationRecord
  has_one :experience
  has_one :address
end
