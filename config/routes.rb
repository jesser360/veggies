Rails.application.routes.draw do
  resources :orders
  resources :customers
  resources :batches
  resources :farmers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/' => 'pages#home'

end
