class Announcement < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  has_and_belongs_to_many :tags
  accepts_nested_attributes_for :tags, allow_destroy: true
end
