Rails.application.routes.draw do
  resources :recharges
  resources :addbalances
  resources :plans
  resources :operators
  get 'home/index'
  get 'home/recharge'
  devise_for :users
  devise_for :admins
  resources :transactions
    root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
