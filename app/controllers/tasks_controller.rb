class TasksController < ApplicationController
  before_action :set_task, only: %i[ show edit update destroy ]

  # GET /tasks or /tasks.json
  def index
    @tasks = Task.all
  end

  # GET /tasks/1
  def show
    @task = Task.find(params[:id])
    @task_status = @task.task_status || "default"
    @is_own_task = current_user == @task.user
  end

  def start_task
    @task = Task.find(params[:id])
    return if @task.user == current_user

    @task.update(task_status: "requested")
    redirect_to task_path(@task), notice: "Request has been sent."
  end

  def accept_request
    return if @task.user != current_user # Do nothing if the task doesn't belong to the current user

    @task.update(task_status: "in_progress")
    redirect_to user_path(current_user), notice: "Task request has been accepted."
  end

  # GET /tasks/new
  def new
    @task = Task.new
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

  # PATCH/PUT /tasks/1
  def update
    if @task.update(task_params)
      redirect_to task_url(@task), notice: "Task was successfully updated."
    else
      render :edit, status: :unprocessable_entity
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
    params.require(:task).permit(:name, :description, :price, :category_id)
  end
end
