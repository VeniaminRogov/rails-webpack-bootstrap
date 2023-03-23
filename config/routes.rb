Rails.application.routes.draw do
  root "users#index"
  
  resources :users do
    resources :orders
  end
  resources :orders

end
