class Address < ActiveRecord::Base
  belongs_to :user
  belongs_to :country
  belongs_to :city
  
  def full_address
    [self.street, self.number, self.city.name, self.zip, self.country.name].to_sentence(:last_word_connector => ', ', :two_words_connector => ', ').html_safe
  end
end
