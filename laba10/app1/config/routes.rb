Rails.application.routes.draw do

  get 'main/index'
  root 'main#index'
  get 'main/view'
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  end
