class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :announcement
  
  validates :user_id, presence: true
  validates :announcement_id, presence: true
  validates :body, presence: true
end
