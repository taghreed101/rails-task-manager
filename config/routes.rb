Rails.application.routes.draw do

  # get 'tasks/index'
  get 'tasks', to: 'tasks#tasks'
  # get '/index' => 'tasks#index'
  get "/tasks/:id", to: "tasks#show"
  get "new", to: "tasks#new"
  post "/tasks", to: "tasks#create"
  get "/tasks/:id/edit", to: "tasks#edit"
  put "/tasks/:id", to: "tasks#update"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
