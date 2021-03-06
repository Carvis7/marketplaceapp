Rails.application.routes.draw do

  devise_for :users
  resources :plants 
  resources :purchases, only: [:create]
  resources :dashboard, only: [:index]
  resources :conversations do
    resources :messages
  end

  root to: 'pages#home'
end
