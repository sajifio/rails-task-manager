Rails.application.routes.draw do
  # verb path     controller action
  # READ
  get 'tasks', to: 'tasks#index'
  get 'tasks/:id', to: 'tasks#show', as: 'task'
  # CREATE
  get 'tasks/new', to: 'tasks#new', as: 'new_task'
  post 'tasks/create', to: 'tasks#create'
  # UPDATE
  get 'tasks/:id/edit', to: 'tasks#edit'
  patch 'tasks/:id', to: 'tasks#update'
  # DELETE
  delete 'tasks/:id', to: 'tasks#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
