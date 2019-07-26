# frozen_string_literal: true

Rails.application.routes.draw do
  resources :categories, only: %i[create index edit update new]
  resources :customer,  only: %i[create index edit update new]
  resources :dashboard, only: [:index]
  resources :ideas,     only: %i[create index edit update new]
  resources :feedback,  only: %i[index show new]
  resources :portal,    only: [:index]
  resources :staffs,    only: %i[create index new edit update]
  resources :statuses,    only: [:edit]

  get '/idea_staffs', to: 'idea#staff'

  # scope module: 'users' do
  #    resources :customer,  :only => [:index, :edit, :new]
  #    resources :staffs,    :only => [:create, :index, :new, :edit, :update]
  # end

  # scope module: 'functionality' do
  #   resources :ideas,     :only => [:index, :edit, :new]
  #   resources :feedback,  :only => [:index, :show, :new]

  #   resources :status,    :only => [:edit]
  # end

  # resources :portal,    :only => [:index]
  # resources :dashboard, :only => [:index]
  # resources :category,  :only => [:index, :new]

  # resources :verifications, path: '/verify', as: :foo
  # resources :verifications, path: '/verify', as: :foo

  # get "/hello", to: "foo#bar"

  root 'portal#index'
end
