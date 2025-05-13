class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def show
    @task = Task.find(params[:id])
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to tasks_path
    else
      render "new", status: :unprocessable_entity
    end
  end

  def task_params
    params.require(:task).permit(:title, :details)
  end

  def edit
    @task = Task.find(params[:id])
  end

  def destroy
    @task = Task.find(param[:id])
    @task.destroy
    redirect_to tasks_path, status: :see_other
  end
end
