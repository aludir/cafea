class Announcement < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  acts_as_taggable
end
