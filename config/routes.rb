Bitdive::Application.routes.draw do
  get "scuba/index"

  get '/login', :to => 'sessions#new', :as => :login
  match '/auth/:provider/callback', :to => 'sessions#create'
  match'/auth/failure', :to => 'sessions#failure'
  get '/logout', :to => 'sessions#destroy'

  root to: 'scubas#index'

  resources :scubas
end
