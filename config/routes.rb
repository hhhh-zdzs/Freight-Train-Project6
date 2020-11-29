Rails.application.routes.draw do
  resources :evaluations, :students, :groups
  get 'home_page/index'
  root 'home_page#index'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :evaluations
  resources :students
  resources :groups

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
