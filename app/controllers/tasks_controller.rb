class TasksController < ApplicationController


  def index
    @tasks = Task.all
  end

  def show

    index = (params[:id].to_i)

    @task = Task.find_by(id:index)

    if @task.nil?
      render :notfound, status: :not_found
      # head :not_found
    end
  end

end
