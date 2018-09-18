class TasksController < ApplicationController


  def index
    @tasks = Task.all
  end

  def show
    @tasks ||= Task.all
    index = params[:id].to_i

    @task = @tasks[index - 1][:action]
    if @task.nil?
      head :not_found
    end
  end

end
