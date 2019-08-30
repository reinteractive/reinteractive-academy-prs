# frozen_string_literal: true

Rails.application.routes.draw do
  resources :categories, only: %i[create index edit update new]
  resources :customer,  only: %i[create index edit update new]
  resources :dashboard, only: [:index]
  resources :feedback,  only: %i[index show new create]
  resources :portal, only: [:index]
  resources :staffs, only: %i[create index new edit update]
   

# get '/idea_staffs', to: 'idea#staff'
# get '/feedbacks/:id', to: 'ideas#edit'

  resources :statuses
  
  resources :ideas do
    resources :statuses, only: [:index, :edit, :show, :update], controller: 'ideas/statuses'
  end


root 'portal#index'
end
