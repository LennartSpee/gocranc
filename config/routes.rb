Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'about', to: 'pages#about'
  get 'faq', to: 'pages#faq'
  get 'guides', to: 'pages#guides'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/profiles/edit', to: "profiles#edit", as: :edit_profile
  resources :profiles, only: [:show, :update, :create, :new, :index]
  get '/profile/:id', to: "profiles#show", as: :show_profile

  resources :offers do
    resources :bookings, only: [:create, :new, :edit, :update, :destroy]
    resources :reviews, only: [:create, :new]
    collection do
      get :sports
    end
  end
  resources :bookings, only: [:show, :edit, :update, :destroy, :index]

  resources :chatrooms, only: [:show, :create] do
    resources :messages, only: [:create]
  end

  post "bookings/:id/:response", to: "bookings#change_booking_status", as: "change_booking_status"
  get '/my_bookings', to: "bookings#my_bookings"
  get '/my_offers_bookings', to: "bookings#my_offers_bookings"
  get '/my_offers', to: "offers#my_offers"
end
