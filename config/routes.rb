Rails.application.routes.draw do
  root 'products#index'
  devise_for :users
  resources :carts
  
  namespace :admin do
    resources :products
  end
  #root "admin/products#index"
  resources :products do

     member do
       post :add_to_cart
     end
  end
end
