class SessionsController < ApplicationController
  def new
    @login = Login.new
  end

  def create
    @user = User.find_by(username: params[:username])
    if @login.authenticate(params[:password])
      redirect_to secure_path, notice: "Success"
    else
      render :new
    end
  end
end
