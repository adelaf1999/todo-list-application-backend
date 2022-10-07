Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  post '/destroy-task' => 'task#destroy'

  post '/edit-task' => 'task#update'

  get '/get-all-tasks' => 'task#index'

  post '/create-task' => 'task#create'

end
