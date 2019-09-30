Rails.application.routes.draw do
  get 'todos/index'
  get 'todos/show'
  get 'tasks/index'
  devise_for :users

  root to:'tasks#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
