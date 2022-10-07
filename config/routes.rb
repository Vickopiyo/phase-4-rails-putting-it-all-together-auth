Rails.application.routes.draw do

  resources :recipes, only: [:index,:create]
# singup
  post "/signup", to: "users#create"
  # maintain login
  get "/me", to: "users#show"

  # login
  post "/login", to: "sessions#create"
  # logout
  delete "/logout", to: "sessions#destroy"
  
  # resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
