Rails.application.routes.draw do
  devise_for :users
  root to: "boards#index"
  resources :boards, only: [:show, :new, :create, :edit, :update, :destroy]
  
  resources :board do
    resources :tasks do
      resources :comments, only: [:show,:new, :create]
    end
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
