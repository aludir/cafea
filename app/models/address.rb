class Address < ActiveRecord::Base
  belongs_to :user
  belongs_to :country
  belongs_to :city
end
