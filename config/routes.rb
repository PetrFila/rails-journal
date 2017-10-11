Rails.application.routes.draw do
  root 'articles#index'

  #Articles 
  resources :articles do
    #Comments 
    resources :comments
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
