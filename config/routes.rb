Rails.application.routes.draw do



  get 'dashboard/show', to: 'dashboard#show'

  resources :instruments

  devise_for :users
  root to: 'pages#home'
  # only add routes as you need them
  # discuss in person about which routes are necessary when adding only: and except: cases
end
