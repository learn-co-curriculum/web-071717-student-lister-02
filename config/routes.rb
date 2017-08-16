Rails.application.routes.draw do
  resources :students, only: [:show, :new, :index, :create]
  get '/login', to: 'sessions#new', as: :login
  post '/login', to: 'sessions#create'
  delete '/sessions/destroy', to: 'sessions#destroy'

  root 'students#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
