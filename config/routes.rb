Rails.application.routes.draw do

  # get 'users/sign_out', to: 'pages#home'

  get 'dashboard/show', to: 'dashboard#show'

  resources :instruments
<<<<<<< HEAD
  resources :dashboard, only: :show

=======
>>>>>>> master
  devise_for :users
  root to: 'pages#home'
  # only add routes as you need them
  # discuss in person about which routes are necessary when adding only: and except: cases
end
