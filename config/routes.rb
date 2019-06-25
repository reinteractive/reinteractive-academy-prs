Rails.application.routes.draw do


  root 'welcome#index'
  resources :customers, only: [:create]

  get "/verify/:token", to: "verifications#create"
  # resources :verifications, only: [:create], path: "/verify", as: :verify



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
end
