Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # listing all tasks
  get 'tasks', to: 'tasks#index'
  # creating a new task
  get 'tasks/new', to: 'tasks#new', as: :new_task
  post 'tasks', to: 'tasks#create'
  # going to a specific task
  get 'tasks/:id', to: 'tasks#show', as: :task
  # update
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch 'tasks', to: 'tasks#create'
  # Delete a restaurant
  delete 'tasks/:id', to: 'tasks#destroy'
end
