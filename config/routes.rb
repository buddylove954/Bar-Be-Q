Rails.application.routes.draw do
  devise_for :users
  root 'barbecues#index'

 	namespace :api do
 		resources :barbecues, only: :show do
 		get '/join' => 'barbecues#show', on: :member
 	end
 end

  resources :barbecues, only: [ :index, :show, :new, :create ]
end
