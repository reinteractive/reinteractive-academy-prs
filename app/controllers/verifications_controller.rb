class VerificationsController < ApplicationController

  def create
    customer = Customer.find_by(token: params[:token])
    if customer
      cookies[:customer] = "Welcome #{customer. email}"
      redirect_to root_path
    else
      redirect_to root_path
    end
  end
end
