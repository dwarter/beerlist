Danapp::Application.routes.draw do
 
  match 'asdfasdfasdf' => 'participations#create', :as => :register_for_event
  match 'participations/:event_id/destroy' => 'participations#destroy', :as => :destroy_participation
  resources :blahs
  resources :eventspic
  match 'gravatar' => 'blahs#gravatar'
  match 'eventpic' => 'eventspic#eventpic'

  resources :users do
    member do
      get :following, :followers
    end
  end
  resources :sessions, :only => [:new, :create, :destroy]
  resources :microposts, :only => [:create, :destroy]
  resources :relationships, :only => [:create, :destroy]
  resources :beers
  resources :events
  

  match '/beerbasics'=> 'pages#beerbasics'
  match '/brewtube' => 'pages#brewtube'
  
  
  match '/contact' => 'pages#contact'
  match '/about' => 'pages#about'
  match '/help' => 'pages#help'
  match '/signup' => 'users#new'
  match '/signin' => 'sessions#new'
  match '/signout' => 'sessions#destroy'
  match '/microposts/:id/destroy' => 'microposts#destroy', :as => :destroy_micropost
  match '/users/:id/destroy' => 'users#destroy', :as => :destroy_user
  root :to => 'pages#home'
end
