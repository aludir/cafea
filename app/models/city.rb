class City < ActiveRecord::Base
  belongs_to :experience
  belongs_to :address
end
