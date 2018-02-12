 Rails.application.routes.draw do
  get 'pages/index'

  get 'pages/about'

  #get 'sessions/new'

  #get 'sessions/create'

  #get 'sessions/destroy'
controller :sessions do
get 'login' => :new 
post 'login' => :create
get 'logout' => :destroy
delete 'logout' => :destroy

end
  resources :users
  resources :genres
  resources :movies
  root 'pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
