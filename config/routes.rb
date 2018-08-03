Rails.application.routes.draw do
  devise_for :users, controllers: {
    omniauth_callbacks: :omniauth_callbacks
  }
  root controller: :tasks, action: :index

  resources :tasks, only: [:new, :create, :show, :notice]
end
