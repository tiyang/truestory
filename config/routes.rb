Truestory::Application.routes.draw do

  devise_for :users

  resources :stories

  get "welcome/index"

  get "welcome/about"

  root to: 'stories#index'

  
end
