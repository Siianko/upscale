Rails.application.routes.draw do
  devise_for :users
  root controller: :tasks, action: :index

  resources :tasks, only: [:new, :create, :show]
end
