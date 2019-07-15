Rails.application.routes.draw do
  # resources :category,  :only => [:index, :new]
  # resources :customer,  :only => [:index, :edit, :new]
  # resources :dashboard, :only => [:index]
  # resources :ideas,     :only => [:index, :edit, :new]
  # resources :feedback,  :only => [:index, :show, :new]
  # resources :portal,    :only => [:index]
  # resources :staffs,    :only => [:create, :index, :new, :edit, :update]
  # resources :status,    :only => [:edit]
  
  # scope namespace: :staffs do
  #   resources :ideas
  #   resources :feedback
  #   # /ideas => app/controllers/staff/ideas_controller.rb
  #   # /feedback => app/controllers/staff/feedbacks_controller.rb
  # end

  # scope module: 'admin' do
  #   resources :staffs
  #   # controller: app/controlers/admin/articles_controller.rb
  #   # url: /staffs
  # end

  # resources :verifications, path: '/verify', as: :foo  

  # get "/hello", to: "foo#bar"

  
  root "portal#index"
end



