Rails.application.routes.draw do

  get "index", to: "dashboard#index"
  get "about", to: "dashboard#about"

  resources :articles
  root to: 'articles#index' 
end
