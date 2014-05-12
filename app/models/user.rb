class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :addresses
  has_many :educations
  has_many :emails
  has_many :experiences
  has_many :languages
  has_many :phones
  has_many :announcements
  has_many :comments
  has_and_belongs_to_many :lbgs
  has_and_belongs_to_many :interests
  validates :uuid, uniqueness: true
end
