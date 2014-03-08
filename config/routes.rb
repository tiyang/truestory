Truestory::Application.routes.draw do

  resources :stories

  get "welcome/index"

  get "welcome/about"

  root to: 'welcome#index'

  
end
