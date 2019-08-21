Rails.application.routes.draw do

  get 'dashboard/show', to: 'dashboard#show'

  resources :instruments
  devise_for :users do
  end
  devise_for :users
  root to: 'pages#home'
end
