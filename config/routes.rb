Rails.application.routes.draw do

  devise_for :users
  resources :plants
  resources :dashboard, only: [:index]

  root to: 'pages#home'
end
 