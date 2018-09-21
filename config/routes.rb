Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # #show index page of all tasks
  # get '/tasks', to:'tasks#index', as: 'tasks'
  #
  # #redirect user to new task form page and post/save the details
  # get '/tasks/new', to: 'tasks#new', as: 'new_task'
  # post '/tasks', to: 'tasks#create'
  #
  # #show index page of one task
  # get '/tasks/:id', to:'tasks#show', as: 'task'
  #
  # #bring user to form for editing one existing patch and editing that task
  # get '/tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'
  # patch '/tasks/:id', to: 'tasks#update'
  #
  # #delete existing task
  # delete '/task/:id', to: 'task#destroy'

  resources :tasks

end
