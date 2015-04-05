class Experience < ActiveRecord::Base
  belongs_to :user
  belongs_to :country
  belongs_to :city
  has_one :company
end
