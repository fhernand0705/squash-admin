Rails.application.routes.draw do

  # get 'sessions/new'
  resources :players
  resources :coaches
  resources :clinics
  resources :cohorts
  resources :users

  root 'pages#dashboard'
  get 'pages/entry', to: 'pages#entry'

  # USER routes
  get 'users/new', to: 'users#create'
  patch 'users/:id', to: 'users#update'

  # SESSIONS routes
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  # COHORT (CRUD) routes
  get 'cohorts/new', to: 'cohorts#create'
  patch 'cohorts/:id', to: 'cohorts#update'

  # PLAYER (CRUD) routes
  get 'players/new', to: 'players#create'
  patch 'players/:id', to: 'players#update'

  # COACH (CRUD) routes
  get 'coaches/new', to: 'coaches#create'
  patch 'coaches/:id', to: 'coaches#update'

  # CLINIC (CRUD) routes
  get 'clinics/new', to: 'clinics#create'
  patch 'clinics/:id', to: 'clinics#update'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
