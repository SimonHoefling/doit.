class TasksController < ApplicationController
  before_action :set_task, only: %i[show edit update destroy]

  # GET /tasks or /tasks.json
  def index
    @tasks = Task.all
  end

  # GET /tasks/1
  def show
    @task = Task.find(params[:id])
    @user_can_create_chatroom = @task.user_can_create_chatroom(current_user)
    @task_status = @task.task_status || "default"
    @is_own_task = current_user == @task.user
  end

  # GET /tasks/my_tasks
  def my_tasks
    @tasks = current_user.tasks
    @started_tasks = Task.where("(task_status = 'requested' AND requested_by_id = :user_id) OR task_status = 'in_work'", user_id: current_user.id)
    @requested_tasks = Task.where(task_status: "requested", user: current_user)
    @accepted_tasks = Task.joins(:user).where(users: { id: current_user.id }, task_status: "in_work")
    @done_tasks = Task.where(task_status: "done", user: current_user).or(Task.where(task_status: "done", requested_by: current_user))
  end


  # Method to start a task
  def start_task
    @task = Task.find(params[:id])
    return if @task.user == current_user

    @task.update(task_status: "requested", requested_by_id: current_user.id)

    redirect_to my_tasks_tasks_path, notice: "Request has been sent."
  end

  # Method to accept a task request
  def accept_request
    @task = Task.find(params[:id])

    if @task.accept_request!
      redirect_to my_tasks_tasks_path, notice: "Task request has been accepted."
    else
      redirect_to task_path(@task), alert: "Failed to accept the task request."
    end
  end

  # Method for the task owner to reject a task request
  def reject_request
    @task = Task.find(params[:id])

    if @task.reject_request!
      redirect_to my_tasks_tasks_path, notice: "Task request has been declined."
    else
      redirect_to task_path(@task), alert: "Failed to decline the task request."
    end
  end

  # Method for the task owner to mark a task as done
  def done_task
    @task = Task.find(params[:id])

    if current_user == @task.user && @task.update(task_status: "done")
      redirect_to my_tasks_tasks_path, notice: "Task has been marked as done."
    else
      redirect_to task_path(@task), alert: "Failed to mark the task as done."
    end
  end

  # GET /tasks/new
  def new
    @task = Task.new
  end

  # Method to create a chatroom for a task
  def create_chatroom
    @task = Task.find(params[:id])
    @chatroom = Chatroom.new(task: @task, name: @task.name, user_id: current_user.id)

    if @chatroom.save
      redirect_to chatroom_path(@chatroom), notice: "Chatroom created successfully."
    else
      redirect_to task_path(@task), alert: "Failed to create the chatroom."
    end
  end


  # GET /tasks/1/edit
  def edit
  end

  # POST /tasks
  def create
    @task = Task.new(task_params)
    @task.user = current_user

    if @task.save
      redirect_to task_url(@task), notice: "Task was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tasks/1 this also marks a task a done in the database
  def update
    @task = Task.find(params[:id])

    if @task.update(task_status: "done")
      redirect_to user_path(current_user), notice: "Task has been marked as done."
    else
      redirect_to task_path(@task), alert: "Failed to mark the task as done."
    end
  end

  # DELETE /tasks/1
  def destroy
    @task.destroy

    redirect_to tasks_url, notice: "Task was successfully destroyed."
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_task
    @task = Task.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def task_params
    params.require(:task).permit(:name, :description, :price, :category_id, :photo, :start_time)
  end
end
