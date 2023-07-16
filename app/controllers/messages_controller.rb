class MessagesController < ApplicationController
  def create
    @chatroom = Chatroom.find(params[:chatroom_id])
    @message = Message.new(message_params)
    @message.chatroom = @chatroom
    @message.user = current_user
    @message.read = false # Set the message as unread by default for the message notification

    if @message.save
      NewMessageNotification.with(
        chatroom_id: @chatroom.id,
        sender_id: @message.user_id
      ).deliver(current_user)

      ChatroomChannel.broadcast_to(
        @chatroom,
        message: render_to_string(partial: "messages/message", locals: { message: @message }),
        sender_id: @message.user_id
      )
      head :ok
    else
      render "chatrooms/show", layout: false, status: :unprocessable_entity # Render the chatroom show view if user tries to send an empty message
    end
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
