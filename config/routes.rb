Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root 'posts#index'

  get '/register', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'


  resources :users, only: [:new, :create, :edit, :update, :show]
  

  resources :posts do
    resources :comments
  end
  
end
