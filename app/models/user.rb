class User < ActiveRecord::Base
  has_many :addresses
  has_many :educations
  has_many :emails
  has_many :experiences
  has_many :languages
  has_many :phones
  has_many :announcements
  has_and_belongs_to_many :lbgs
  has_and_belongs_to_many :interests
end
