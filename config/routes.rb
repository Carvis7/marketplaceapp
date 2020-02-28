Rails.application.routes.draw do

  resources :plants

  root to: 'plants#index'
end
 