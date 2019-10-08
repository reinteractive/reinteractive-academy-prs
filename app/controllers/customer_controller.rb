class CustomerController < ApplicationController
  def index
    @customers = Customer.all
  end

  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.new(customer_params)
    if @customer.save
      redirect_to action: 'index'
    else
      render 'new'
    end
  end

  def edit
    @customer = Customer.find(params[:id])
    @customer_feedback = @customer.feedbacks
  end

  def update
    @customer = Customer.find(params[:id])
    if @customer.update_attributes(customer_params)
      redirect_to customer_index_path
    else
      render 'edit'
    end
  end

  private

  def customer_params
    params.require(:customer).permit(:name, :surname, :email)
  end
end
