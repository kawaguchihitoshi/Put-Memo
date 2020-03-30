class Message < ApplicationRecord
  belongs_to :user
  has_many :messages_tags
  has_many :tags,  through:  :messages_tags
  has_many :likes
  has_many :users,  through:  :like
end
