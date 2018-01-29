Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  root "places#index"
  # resources :reviews
  # resources :pictures
  resources :places
  resources :categories
  resources :places do
  	resources :reviews
  	resources :pictures
  end
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
