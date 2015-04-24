Rails.application.routes.draw do
  devise_for :users
  root 'barbecues#index'

 	namespace :api do
 		resources :barbecues, only: :show do
 		post '/join' => 'barbecues#join', on: :member
 	end
 end

  resources :barbecues, only: [ :index, :show, :new, :create ]
end
