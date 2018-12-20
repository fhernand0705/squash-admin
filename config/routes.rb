Rails.application.routes.draw do
  resources :players
  resources :coaches
  resources :clinics
  resources :cohorts

  root 'pages#home'

  # COHORT (CRUD) routes
  get 'cohorts/new', to: 'cohorts#create'
  patch 'cohorts/:id', to: 'cohorts#update'

  # PLAYER (CRUD) routes
  get 'players/new', to: 'players#create'
  patch 'players/:id', to: 'players#update'

  # COACH (CRUD) routes
  get 'coaches/new', to: 'coaches#create'
  patch 'coaches/:id', to: 'coaches#update'


  # get 'clinics/new'
  # get 'clinics/edit'
  # get 'clinics/index'
  # get 'clinics/delete'
  # get 'coaches/new'
  # get 'coaches/edit'
  # get 'coaches/index'
  # get 'coaches/delete'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
