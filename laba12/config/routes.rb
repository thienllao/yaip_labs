Rails.application.routes.draw do
  resources :users, only: [:new, :create]
  root 'main#index'

  get 'main/calc'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#logout'
  get 'users/list'
  
  get 'welcome', to: 'sessions#welcome'
  get 'users', to: 'users#list'

  get 'passwd', to: 'sessions#passwd'
  post 'passwd', to: 'sessions#change_password'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
