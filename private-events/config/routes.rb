Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'users/registrations' }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :events, only: [:index, :new, :create]
  resources :users, only: [:show]

  # Defines the root path route ("/")
  # root "articles#index"
  root "events#index"
end
