Rails.application.routes.draw do
  
  root 'articles#index'

  get '/login',     to: 'sessions#new'
  post '/login',    to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  
  #Users
  resources :users
  post '/signup',  to: 'users#create'
  
  #Articles 
  resources :articles do
    #Comments 
    resources :comments
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
