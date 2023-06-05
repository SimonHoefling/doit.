class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @tasks = @user.tasks
    @created_tasks = @user.tasks
    @requested_tasks = Task.where(task_status: "requested", user: @user)
    @accepted_tasks = Task.joins(:user).where(users: { id: @user.id }, task_status: "in_work")
  end
end
