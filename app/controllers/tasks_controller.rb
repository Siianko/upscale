class TasksController < ApplicationController
  def index
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.create(task_params)
    if @task.persisted?
      redirect_to root_path, notice: "Task successfully created"
  
    else
      flash[:error] = 'Your Task could not be created'
      render :new
    end
  end

  private

  def task_params
    params.require(:task).permit(:title, :description, :budget, :location)
  end
end
