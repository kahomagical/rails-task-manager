Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  # Read all
  root "task#index"
  get "/tasks", to: "task#index", as: :tasks
  # Create
  get "/tasks/new", to: "task#new", as: :new_task
  post "/tasks", to: "task#create"
  # Read one
  get "/tasks/:id", to: "task#show", as: :task
  # Update
  # Delete
end
