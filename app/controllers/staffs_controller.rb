class StaffsController < ApplicationController
  def index
    @staffs = Staff.all
  end

  def new
    @staff = Staff.new
  end

def create
  @staff = Staff.new(staff_params)
  if @staff.save
    redirect_to action: "index"
  else
    render 'new'
  end
end


  def edit
    @staff = Staff.find(params[:id])
  end

    # def update
    #   @staff = Staff.find(staff_params)
    #     if @staff.update(params[:staff_id])
    #       flash[:success] = "Staff was successfully updated"
    #       redirect_to @staff
    #     else
    #       flash[:error] = "Something went wrong"
    #       render 'edit'
    #     end
    # end

    def update
       @staff = Staff.find(params[:id])
      if @staff.update_attributes(staff_params)
        redirect_to staffs_path
      else
        render action: 'edit'
      end
    end


    
  
  def show
    # @staff = Staff.find(params[:id])
  end



  private

  def staff_params
    params.require(:staff).permit(:name, :last_name)
  end
end
