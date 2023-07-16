class Chatroom < ApplicationRecord
  belongs_to :task
  belongs_to :user
  has_many :messages, dependent: :destroy

  def unread_messages?(user)
    messages.where(read: false).where.not(user_id: user.id).exists?
  end
end
