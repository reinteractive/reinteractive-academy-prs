class CustomersController < ApplicationController

  def create
    @customer = Customer.create(customer_params)
    @customer.token = SecureRandom.hex


    if @customer.save 
      redirect_to root_path, notice: "Please check your email & click link "   
    else 
      redirect_to root_path, notice: "Canot Create Customer"   
    end 
  end
  



private 
  def customer_params
    params.require(:customer).permit(:email)
  end
end 
