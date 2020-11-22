Rails.application.routes.draw do
  devise_for :users
  root to: "todo#index"
  get 'todo/index'
  get 'todo/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
