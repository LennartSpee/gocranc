Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :users do
    resources :profile, only: [:show, :edit, :update, :index, :profile]
  end

  resources :offers do
    resources :bookings, only: [:create, :new, :edit, :update, :destroy]
    resources :reviews, only: :create
  end
  resources :bookings, only: [:show, :edit, :update, :destroy, :index] do
  end
end
