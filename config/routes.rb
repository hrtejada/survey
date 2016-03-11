Rails.application.routes.draw do
  resources :single_surveys
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
