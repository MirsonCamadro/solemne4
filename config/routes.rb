Rails.application.routes.draw do
  resources :tasks, only: :index
  get 'todos', to: "todos#index"
  get 'todo/:todo_id', to: "todos#show", as:"todos_show"
  patch 'todos/:todo_id', to: "todos#update", as:"todos_update"

  devise_for :users

  root to:'tasks#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
