class ChatroomsController < ApplicationController
  def index
    @chatrooms = Chatroom.joins(task: :user)
                         .joins("LEFT JOIN messages ON messages.chatroom_id = chatrooms.id")
                         .where("(tasks.user_id = :current_user_id OR chatrooms.user_id = :current_user_id)", current_user_id: current_user.id)
                         .group("chatrooms.id")
                         .order("MAX(messages.created_at) DESC NULLS LAST") # Order by the most recent message
  end

  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new # Initialize an empty message object

    mark_messages_as_read(current_user, @chatroom) # Mark messages as read
  end

  def new
    @chatroom = Chatroom.new
  end

  def create
    task = Task.find(params[:task_id])
    requested_user = task.requested_by

    # Check if a chatroom already exists between the task owner and the requested user
    existing_chatroom = Chatroom.joins(:task, :user).where(tasks: { user_id: task.user_id }, users: { id: requested_user.id }).first

    if existing_chatroom
      redirect_to chatroom_path(existing_chatroom), notice: "You are now connected to the existing chatroom."
    else
      @chatroom = Chatroom.new(user: task.user, task: task)
      if @chatroom.save
        redirect_to chatroom_path(@chatroom), notice: "Chatroom created successfully."
      else
        render :new
      end
    end
  end

  private

  def chatroom_params
    params.require(:chatroom).permit(:name)
  end

  def mark_messages_as_read(user, chatroom)
    messages = chatroom.messages.where(read: false).where.not(user_id: user.id)
    messages.each do |message|
      message.update(read: true) unless message.read
    end
  end
end
