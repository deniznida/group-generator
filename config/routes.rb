Rails.application.routes.draw do

  resources :cohorts
  resources :groups
  resources :students

  get 'code/:id' => 'code#index'
  root 'welcome#index'


  match 'login', to: redirect('/auth/github'), via: [:get, :post]
  match '/auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  match 'auth/failure', to: redirect('/'), via: [:get, :post]
  get 'logout' => 'sessions#destroy'

end
