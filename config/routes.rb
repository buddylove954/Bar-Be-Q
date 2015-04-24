Rails.application.routes.draw do
  devise_for :users
  root 'barbecues#index'

 	namespace :api do
 		resources :barbecues, only: :show
 	end

  resources :barbecues, only: [ :index, :show, :new, :create ]
end
