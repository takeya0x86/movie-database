Rails.application.routes.draw do
  root 'welcome#index'
  devise_for :users
  resources :directors
  resources :series
  resources :movies
end
