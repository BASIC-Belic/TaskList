Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/tasks', to:'tasks#index', as: 'tasks'
  get 'tasks/:id', to:'tasks#show', as: 'task'

  #redirect user to form page and post/save the details
  get '/tasks' to: 'tasks#new', as: 'new_task'
  post '/tasks/new' to: 'tasks#create'
end
