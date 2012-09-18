PairUp::Application.routes.draw do
  authenticated :user do
    root :to            => 'home#index'
  end
  root :to              => "home#index"
  get "/home"           => "home#index"
  get "/about"          => "home#about"
  get "/contact"        => "home#contact"
  get "/pricing"        => "home#pricing"
  get "/terms"          => "home#terms"
  get "/privacy"        => "home#privacy"

  
  devise_for :users
  resources :users, :only => [:show, :index, :edit, :destroy]
  
end
