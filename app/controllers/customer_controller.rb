class CustomerController < ApplicationController
  def index
  end

  def new
    @customer = Customer.new
  end

   def create
     @customer = Customer.new(@customer_params)
       if @customer.save
         redirect_to variables_path
       else
         render 'new'
       end
   end
  

  def edit
  end




  private

   def customer_params
     params.require(:customer).permit(:name)
   end
  
end

 