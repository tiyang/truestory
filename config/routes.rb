Truestory::Application.routes.draw do

  devise_for :users

  resources :stories do
    resources :favors, only: [:create, :destroy]
    resources :votes, only: [:create, :destroy]
  end  

  get "welcome/index"

  get "welcome/about"

  root to: 'stories#index'

  
end
