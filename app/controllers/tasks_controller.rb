class TasksController < ApplicationController
  
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
    list_id = params[:task].delete(:list_id)
    # puts list_id
    @task = Task.new(params[:task])
    @task.list_id = list_id
    @task.save
    redirect_to list_path(list_id)
  end
  
  def edit
    @task = Task.find(params[:id])
  end
  
  def update
    list_id = Task.find(params[:id]).list_id
    @task = Task.find(params[:id])
    @task.update_attributes(params[:task])
    redirect_to list_path(list_id)
  end
  
  def destroy
    @task = Task.find(params[:id])
    list_id = @task.list_id
    @task.destroy
    redirect_to list_path(list_id)
  end
  
end