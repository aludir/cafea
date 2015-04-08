class Announcement < ActiveRecord::Base
  belongs_to :user
  has_many :comments, dependent: :destroy
  acts_as_taggable
  
  validates :title, presence: true
  validates :body, presence: true
end
