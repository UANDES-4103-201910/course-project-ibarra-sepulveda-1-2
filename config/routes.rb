Rails.application.routes.draw do
  get 'search/create'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  resources :blacklists
  resources :dumpsters
  resources :posts
  resources :admins
  resources :profiles

  root :to => 'home#index'

end
