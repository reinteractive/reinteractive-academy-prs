# frozen_string_literal: true

Rails.application.routes.draw do
  resources :categories, only: %i[create index edit update new]
  resources :customer,  only: %i[create index edit update new]
  resources :dashboard, only: [:index]
  resources :ideas,     only: %i[create index edit update new]
  resources :feedback,  only: %i[index show new]
  resources :portal,    only: [:index]
  resources :staffs,    only: %i[create index new edit update]
   

# get '/idea_staffs', to: 'idea#staff'
# get '/feedbacks/:id', to: 'ideas#edit'

  resources :ideas do
    resources :status, only: [:index, :edit, :show, :update], controller: 'ideas/statuses'
  end


root 'portal#index'
end
