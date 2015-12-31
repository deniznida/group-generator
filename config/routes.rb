Rails.application.routes.draw do

  resources :cohorts
  resources :groups
  resources :students

  get 'code/:id' => 'code#index', :as => 'code'
  root 'welcome#index'


  match 'login', to: redirect('/auth/github'), via: [:get, :post]
  match '/auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  match 'auth/failure', to: redirect('/'), via: [:get, :post]
  get 'logout' => 'sessions#destroy'

  namespace :api do
    resources :groups, :defaults => { :format => 'json' }
  end

  namespace :api do
    resources :cohorts, :defaults => { :format => 'json' }
  end

  match '/api/cohorts/:cohort/groups', to: 'api/groups#index', via: [:get], :defaults => { :format => 'json' }

  match '/api/groups/:id/', to: 'api/details#show', via: [:get], :defaults => { :format => 'json' }
end
