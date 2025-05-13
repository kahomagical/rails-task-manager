Rails.application.routes.draw do
  root "tasks#index"
  get "/tasks", to: "tasks#index", as: :tasks
  # Create
  get "/tasks/new", to: "tasks#new", as: :new_task
  post "/tasks", to: "tasks#create"
  # Read one
  get "/tasks/:id", to: "tasks#show", as: :task
  # Update
  get "/tasks/:id/edit", to: "tasks#edit", as: :task_edit
  patch "/tasks/:id", to: "tasks#update"
  # Delete
  delete "/tasks/:id", to: "tasks#destroy"
end
