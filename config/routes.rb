Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :profiles, only: [:show, :update, :create, :new]
  get '/profiles/edit', to: "profiles#edit", as: :edit_profile
  resources :offers do
    resources :bookings, only: [:create, :new, :edit, :update, :destroy]
    resources :reviews, only: :create
  end
  resources :bookings, only: [:show, :edit, :update, :destroy, :index]
  get '/my_offers', to: "offers#my_offers"
end
