class Address < ActiveRecord::Base
  belongs_to :user
  belongs_to :city
  
  def full_address
    country_name = Country.new(self.country_id)
    [self.street, self.number, self.city.name, self.zip, country_name].to_sentence(:last_word_connector => ', ', :two_words_connector => ', ').html_safe
  end
end
