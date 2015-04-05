class Experience < ActiveRecord::Base
  belongs_to :user
  belongs_to :country
  belongs_to :city
  belongs_to :company
end
