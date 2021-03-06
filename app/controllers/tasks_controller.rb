class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new # needed to instantiate the form_for
  end

  def show
    get_task
  end

  def create
    @task = Task.new(task_params)
    @task.save
    # no need for app/views/restaurants/create.html.erb
    redirect_to tasks_path
  end

  def edit
    get_task
  end

  def update
    get_task
    @task.update(task_params)
    # Will raise ActiveModel::ForbiddenAttributesError
    # We need to use Strong Params again to avoid this error, see private
    # method below

    # no need for app/views/restaurants/update.html.erb
    redirect_to tasks_path
  end

  def destroy
    get_task
    @task.destroy

    # no need for app/views/restaurants/destroy.html.erb
    redirect_to tasks_path
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end

  def get_task
    @task = Task.find(params[:id])
  end
end
