class Country < ActiveRecord::Base
  belongs_to :experience
  belongs_to :address
end
