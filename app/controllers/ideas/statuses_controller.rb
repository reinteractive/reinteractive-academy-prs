class Ideas::StatusesController < ApplicationController

  def index
    @ideas = Idea.all
  end


  def edit
    @idea = Idea.find(params[:idea_id])
    @status = Status.find(params[:id])
    @idea_status = @idea.statuses.build
  end

  def show
    @status = Status.find(params[:id])
  end
  
  def update
    @status = Status.find(params[:id])
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
