class Experience < ApplicationRecord
  belongs_to :user
  belongs_to :city
  belongs_to :company

  def company_name
    self.company.name
  end
end
