class Country < ActiveRecord::Base
  has_one :experience
  has_one :address
end
