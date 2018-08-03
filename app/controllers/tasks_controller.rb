class TasksController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
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

  def update 
    @task = Task.find(params[:id])
    if params[:event] == 'receive_bid'
      @task.receive_bid
      #@task.send(:receive_bid)
      #@task.send(params[:event].to_sym)
    end
    render json: {message: "Task poster has been notified - your interest in working on #{@task.title} has been submitted.", task: @task}
  end

  private

  def task_params
    params.require(:task).permit(:title, :description, :budget, :location, :state)
  end
end
