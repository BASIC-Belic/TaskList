class TasksController < ApplicationController


  TASKS = ["laundry", "eating", "ruby homework"]


  def index
    @tasks = Task.all
  end

  def show
    index = params[:id].to_i
    @task = TASKS[index - 1]
    if @task.nil?
      head :not_found
    end
  end

end
