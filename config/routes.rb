Rails.application.routes.draw do
  
  resources :dashboard, only: [:index, :about]
  resources :articles
  root to: 'articles#index' 
end
