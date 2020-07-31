Rails.application.routes.draw do
  post '/order/new', to: 'orders#new'
  resources :orders
  resources :line_items
  resources :carts
  resources :instruments
  devise_for :users, controllers: { registrations: 'registrations'}
  root 'instruments#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
