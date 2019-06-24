class WelcomeController < ApplicationController

    
  def index
    @customer = Customer.new
  end
end
