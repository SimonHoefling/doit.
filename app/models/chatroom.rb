class Chatroom < ApplicationRecord
  belongs_to :task
  belongs_to :user
  has_many :messages, dependent: :destroy
end
