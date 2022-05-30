class Chatroom < ApplicationRecord
  belongs_to :messages
  validates :name
end
