Rails.application.routes.draw do
  devise_for :users
  get "up" => "rails/health#show", as: :rails_health_check
  
  resources :locations

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  get 'pages/basic_gear', to: 'pages#basic_gear', as: 'basic_gear'

  # Defines the root path route ("/")
  root "home#index"
end
