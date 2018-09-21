class TasksController < ApplicationController


  def index
    @tasks = Task.all
  end

  def show

    @task = Task.find_by(id: params[:id])

    if @task.nil?
      render :invalid_task_page, status: :not_found
      # head :not_found
    end
  end

  def new
    @task = Task.new
  end

  # need instance var to be the same in new and create, since they both use the same form in views
  def create
    @task = Task.new(action: params[:task][:action],
      description: params[:task][:description],
      completion_date: params[:task][:completion_date])

      if @task.save
        redirect_to tasks_path

      else
        render new_task_path
      end
  end

  def edit
    @task = Task.find_by(id: params[:id])

    if @task.nil?
      render :invalid_task_page, status: :not_found
    end

  end

  def update
    @task = Task.find_by(id: params[:id])
    if @task.update(action: params[:task][:action],
      description: params[:task][:description],
      completion_date: params[:task][:completion_date])

      redirect_to task_path(@task.id)
      # redirect_to task_path(@task)
    else
      render new_task_path(@task.id)
    end
  end

  def destroy
    task = Task.find_by(id: params[:id])

    if task.destroy(id: params[:id])
      redirect_to tasks_path
    else
      #do something else to show it's bad delete
    end

  end

end
