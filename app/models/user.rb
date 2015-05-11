class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :addresses
  has_many :educations
  has_many :contacts
  has_many :experiences
  has_many :languages
  has_many :announcements
  has_many :comments
  has_and_belongs_to_many :lbgs
  has_and_belongs_to_many :interests
  validates :uuid, uniqueness: true
  validates :name, presence: true
  validates :surname, presence: true
  validates :birth_date, presence: true
  
  def age
    (Date.today - self.birth_date).to_i / 365
  end
  
  def country
    @countries = Array.new
    @addresses = Address.all(:conditions => ["user_id = ? ", self.id])
    @addresses.each do |a|
      @countries << Country.new(a.country_id).name
    end
    @countries.to_sentence
  end
  
  def field
    @fields = Array.new
    @experiences = Experience.all(:conditions => ["user_id = ? ", self.id])
    @experiences.each do |e|
      @fields << e.field_of_work
    end
    @fields.to_sentence
  end
  
  def company
    @companies = Array.new
    @experiences = Experience.all(:conditions => ["user_id = ? ", self.id])
    @experiences.each do |e|
      @companies << e.company.name
    end
    @companies.to_sentence
  end
end
