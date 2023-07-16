class Chatroom < ApplicationRecord
  belongs_to :task
  belongs_to :user
  has_many :messages, dependent: :destroy

  # Check if a are unread messages in the chatroom for the given user
  def unread_messages?(user)
    messages.where(read: false).where.not(user_id: user.id).exists?
  end
end
