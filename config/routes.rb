Rails.application.routes.draw do
  resources :category,  :only => [:index, :new]
  resources :customer,  :only => [:index, :edit, :new]
  resources :dashboard, :only => [:index]
  resources :ideas,     :only => [:index, :edit, :new]
  resources :feedback,  :only => [:index, :show, :new]
  resources :portal,    :only => [:index]
  resources :staffs,    :only => [:create, :index, :new, :edit, :update]
  resources :status,    :only => [:edit]


scope module: 'users' do
    resources :customer,  :only => [:index, :edit, :new]

    resources :staffs,    :only => [:create, :index, :new, :edit, :update]
  end


  scope module: 'functionality' do  
    resources :ideas,     :only => [:index, :edit, :new]
    resources :feedback,  :only => [:index, :show, :new]

    resources :status,    :only => [:edit]
  end



  # resources :portal,    :only => [:index]
  # resources :dashboard, :only => [:index]
  # resources :category,  :only => [:index, :new]

  


  # resources :verifications, path: '/verify', as: :foo  
  
 
  # resources :verifications, path: '/verify', as: :foo  

  # get "/hello", to: "foo#bar"

  
  root "portal#index"
end



