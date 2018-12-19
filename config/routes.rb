Rails.application.routes.draw do
  get 'pages/home'
  resources :players
  resources :coaches
  resources :clinics
  resources :cohorts

  # add root path 

  # get 'cohort/new'
  # get 'cohort/edit'
  # get 'cohort/index'
  # get 'cohort/delete'
  # get 'clinics/new'
  # get 'clinics/edit'
  # get 'clinics/index'
  # get 'clinics/delete'
  # get 'coaches/new'
  # get 'coaches/edit'
  # get 'coaches/index'
  # get 'coaches/delete'
  # get 'players/new'
  # get 'players/edit'
  # get 'players/index'
  # get 'players/delete'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
