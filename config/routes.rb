Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"


  get '/get-all-tasks' => 'task#index'

  post '/create-task' => 'task#create'

end
