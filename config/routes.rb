Rails.application.routes.draw do
  resources :single_surveys
  get 'surveys', to: 'single_surveys#index'
  root to: 'visitors#index'
  devise_for :users
  devise_scope :user do
    get "/login" => "devise/sessions#new"
  end
  devise_scope :user do
    delete "/logout" => "devise/sessions#destroy"
  end
  resources :users
end
