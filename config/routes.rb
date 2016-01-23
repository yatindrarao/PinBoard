Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" } 
  		
  resources :pins
  root 'pins#index'
end
