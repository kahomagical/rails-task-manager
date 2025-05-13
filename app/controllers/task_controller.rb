class TaskController < ApplicationController
  def new
    new_task = Task.new()
  end

  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def create
  end

end
