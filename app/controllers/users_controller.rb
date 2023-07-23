class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @tasks = @user.tasks
    @created_tasks = @user.tasks
    @requested_tasks = Task.where(task_status: "requested", user: @user)
    @accepted_tasks = Task.joins(:user).where(users: { id: @user.id }, task_status: "in_work")
    @started_tasks = Task.where("(task_status = 'requested' AND requested_by_id = :user_id) OR task_status = 'in_work'", user_id: @user.id)
    @done_tasks = Task.where(task_status: "done", user: @user).or(Task.where(task_status: "done", requested_by: @user))
    @task = Task.find_by(requested_by: current_user)

    @earned_money = @done_tasks.where(requested_by: current_user).sum(:price) # shows the earned money in the profile
    @spent_money = current_user.tasks.where(task_status: 'done').sum(:price) # shows the spent money in the profile
    # This is needed for the blue dot in the navbar if there is a new message
    @chatrooms = Chatroom.joins(task: :user)
                         .joins("LEFT JOIN messages ON messages.chatroom_id = chatrooms.id")
                         .where("(tasks.user_id = :current_user_id OR chatrooms.user_id = :current_user_id)", current_user_id: current_user.id)
                         .group("chatrooms.id")
                         .order("MAX(messages.created_at) DESC NULLS LAST")
  end

  # Method to create a new user
  def create
    @user = User.new(sign_up_params)
    if @user.save
      # Handle successful user creation
      redirect_to @user
    else
      # Handle validation errors
      render 'new'
    end
  end

  private

  def sign_up_params
    params.require(:user).permit(
      :first_name,
      :last_name,
      :email,
      :password,
      :password_confirmation,
      :avatar,
      :zip_code,
      :street_name,
      :house_number
    )
  end
end
