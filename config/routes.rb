Rails.application.routes.draw do
  root controller: :tasks, action: :index

  resources :tasks, only: [:new, :create, :show]
end
