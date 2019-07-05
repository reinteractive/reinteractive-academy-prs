Rails.application.routes.draw do
  resources :category,  :only => [:index, :new]
  resources :customer,  :only => [:index, :edit, :new]
  resources :dashboard, :only => [:index]
  resources :ideas,     :only => [:index, :edit, :new]
  resources :feedback,  :only => [:index, :show, :new]
  resources :portal,    :only => [:index]
  resources :staff,     :only => [:create, :index, :new, :edit, :update]
  resources :status,    :only => [:edit]

  root "portal#index"
end



