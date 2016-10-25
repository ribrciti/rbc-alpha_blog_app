Rails.application.routes.draw do
  get 'dashboard/about'

  root to: 'dashboard#index' 
end
