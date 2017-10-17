Rails.application.routes.draw do
  
  root 'articles#index'

  #Single user log in - session
  # get 'signup', to: "users#new"
  get '/login',     to: 'sessions#new'
  post '/login',    to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
 

  
  #Users
  resources :users
  
  
  #Articles 
  resources :articles do
     #Comments 
    resources :comments
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
