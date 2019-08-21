Rails.application.routes.draw do
  get 'dashboard/show', to: 'dashboard#show'

  resources :instruments do
    resources :bookings, only: [:new, :create]
  end
  devise_for :users
  root to: 'pages#home'
end
