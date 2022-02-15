Rails.application.routes.draw do
  # verb path     controller action
  # READ
  get 'tasks', to: 'tasks#index'
  # CREATE
  get 'tasks/new', to: 'tasks#new', as: 'new_task'
  post 'tasks', to: 'tasks#create'

  # READ - avoid id clash with other routes
  get 'tasks/:id', to: 'tasks#show', as: 'task'
  # UPDATE
  get 'tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'
  patch 'tasks/:id', to: 'tasks#update'
  # DELETE
  delete 'tasks/:id', to: 'tasks#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
