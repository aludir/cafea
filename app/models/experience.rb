class Experience < ApplicationRecord
  belongs_to :user
  belongs_to :city
  belongs_to :company
  
  def company_name
    self.company.name
  end
  
  def country_name
    Country.new(self.country_id)
  end
end
