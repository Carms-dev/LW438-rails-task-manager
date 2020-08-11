Rails.application.routes.draw do
  root to: 'tasks#index'
  resources :tasks, only: [:index, :show, :create, :update, :delete]
end
