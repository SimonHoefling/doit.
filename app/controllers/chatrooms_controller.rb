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
    @chatroom = Chatroom.new(chatroom_params)
    if @chatroom.save
      redirect_to chatroom_path(@chatroom), notice: "Chatroom created successfully."
    else
      render :new
    end
  end

  private

  def chatroom_params
    params.require(:chatroom).permit(:name)
  end
end
