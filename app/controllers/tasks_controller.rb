class TasksController < ApplicationController


  def index
    @tasks = Task.all
  end

  def show

    # index = params[:id].to_i

    @task = Task.find_by(id: params[:id].to_i)

    if @task.nil?
      render :invalid_task_page, status: :not_found
      # head :not_found
    end
  end

  def new
    @task = Task.new
  end

  <p>Action: <%= @task.action%></p>
  <p>Description: <%= @task.description%></p>
  <p>Completion Date: <%= @task.completion_date%></p>

  # need instance var to be same in new and create, since they both use the same from in views
  def create
    @task = Task.new(action: params[:task][:action],
      description: params[:task][:description],
      completion_date: params[:task][:completion_date])

      if @task.save
        redirect_to tasks-path
        #otherwise redirect to the newly created book page, two options:
        # redirect_to task_path(book.id)
        # redirect_to task_path(book)

        elsen
        render new_task_path
      end
    end

end
