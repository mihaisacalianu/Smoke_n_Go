Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :bbqs do
    resources :bookings, only: %i[new create]
  end

  resources :bookings, only: %i[index show edit update destroy]

  get "my_bbqs", to: "pages#my_bbqs"
  get "my_bookings", to: "pages#my_bookings"
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
