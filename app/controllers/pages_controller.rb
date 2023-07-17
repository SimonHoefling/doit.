class PagesController < ApplicationController
  def home
    # This is needed for the blue dot in the navbar if there is a new message
    @chatrooms = Chatroom.joins(task: :user)
                         .joins("LEFT JOIN messages ON messages.chatroom_id = chatrooms.id")
                         .where("(tasks.user_id = :current_user_id OR chatrooms.user_id = :current_user_id)", current_user_id: current_user.id)
                         .group("chatrooms.id")
                         .order("MAX(messages.created_at) DESC NULLS LAST")

    # Rest of your code
  end
end
