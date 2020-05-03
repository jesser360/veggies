Rails.application.routes.draw do
  get 'landing/index'
  resources :orders
  resources :customers
  resources :batches
  resources :farmers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # get '/' => 'pages#home'

  root to: 'landing#index'

end
