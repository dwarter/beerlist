Danapp::Application.routes.draw do
  resources :blahs
  match 'gravatar' => 'blahs#gravatar'

  resources :users do
    member do
      get :following, :followers
    end
  end
  resources :sessions, :only => [:new, :create, :destroy]
  resources :microposts, :only => [:create, :destroy]
  resources :relationships, :only => [:create, :destroy]
  resources :beers

  

  match '/beerbasics'=> 'pages#beerbasics'
  match '/brewtube' => 'pages#brewtube'
  match '/events' => 'pages#events'
  match '/contact' => 'pages#contact'
  match '/about' => 'pages#about'
  match '/help' => 'pages#help'
  match '/signup' => 'users#new'
  match '/signin' => 'sessions#new'
  match '/signout' => 'sessions#destroy'
  root :to => 'pages#home'
end
