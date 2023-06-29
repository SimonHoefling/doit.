class ChatroomsController < ApplicationController
  def index
    @chatrooms = Chatroom.joins(task: :user).where("(tasks.user_id = :current_user_id OR chatrooms.user_id = :current_user_id)", current_user_id: current_user.id)
  end

  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new # Initialize an empty message object
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
end
