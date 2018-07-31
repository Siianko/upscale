Rails.application.routes.draw do
  get 'tasks/index'
  root controller: :tasks, action: :index
end
