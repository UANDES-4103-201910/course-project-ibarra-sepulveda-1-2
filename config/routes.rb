Rails.application.routes.draw do
  get 'search/create'
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  resources :blacklists
  resources :dumpsters
  resources :admins
  resources :profiles

  root :to => 'home#index'

  resources :posts do
    member do
      put "like" => "posts#upvote"
      put "unlike" => "posts#downvote"
      get "report" => "posts#report"
      get "deactive" => "posts#deactive"
      get "active" => "posts#active"
    end
  end

  resources :comments do
    member do
      put "like" => "comments#upvote"
      put "unlike" => "comments#downvote"
      get "thread" => "comments#thread"
    end
  end

end
