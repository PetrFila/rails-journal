Rails.application.routes.draw do
  # get '/signup', to: 'users#new'

  root 'articles#index'

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
