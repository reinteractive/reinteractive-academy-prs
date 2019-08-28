class StatusController < ApplicationController
  def edit
   @status = Status.find(params[:id])
   @staff = Staff.find(params[:id])
   @idea = Idea.find(params[:id])
  end
  
  def update
    @status = Status.find(params[:id])
    @staff = Staff.find(params[:id])
    @idea = Idea.find(params[:id])
     if @status.update_attributes(status_params)
        redirect_to ideas_path
      else
        render 'edit'
    end
  end


  private
    
  def status_params
    params.require(:status).permit(:stage, :message, :name, :status_id, :title, :description )
  end

end
