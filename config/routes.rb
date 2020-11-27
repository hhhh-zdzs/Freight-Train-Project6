Rails.application.routes.draw do
  resources :evaluations, :students, :groups
  get 'home_page/index'
  root 'home_page#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
