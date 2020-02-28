Rails.application.routes.draw do

  resources :plants

  root to: 'plant#index'
end
 