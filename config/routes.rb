Rails.application.routes.draw do
  root to: 'pages#home'
  get "/dashboard", to: "pages#dashboard"
  devise_for :users
  resources :tools do
    resources :bookings
  end
  resources :bookings, only: [:update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
