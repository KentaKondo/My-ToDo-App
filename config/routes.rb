Rails.application.routes.draw do
  devise_for :users
  root to: "boards#index"
  resources :boards, only: [:show, :new, :create, :edit]
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
