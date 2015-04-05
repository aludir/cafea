class Experience < ActiveRecord::Base
  belongs_to :user
  has_one :country
  has_one :city
end
