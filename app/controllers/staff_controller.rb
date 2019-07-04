class StaffController < ApplicationController
  def index
    @staffs = Staff.all
  end

  def new
  end

  def edit
    @staff = Staff.find(params[:id])
  end



    def update
      @staff = Staff.find(staff_params)
        if @staff.update_attributes(params[:staff])
          flash[:success] = "Staff was successfully updated"
          redirect_to @staff
        else
          flash[:error] = "Something went wrong"
          render 'edit'
        end
    end
  
  def show
    # @staff = Staff.find(params[:id])
  end



  private

  def staff_params
    params.require(:staff).permit(:name)
  end
end
