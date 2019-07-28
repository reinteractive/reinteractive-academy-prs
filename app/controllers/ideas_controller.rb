# frozen_string_literal: true

class IdeasController < ApplicationController
  def index
    @ideas = Idea.all
  end

  def new
    @idea = Idea.new
  end

  def create
    @idea = Idea.new(idea_params)
    @idea_staffs = @idea.staffs_attributes.new(params[:staffs])
    if @idea.save
      redirect_to action: 'index'
    else
      render 'new'
    end
  end

  def edit
    @idea = Idea.find(params[:id]) 
    @customers = Customer.all
    @categories = Category.all
    # @customer_feedback = @idea.customers.find(params[:id]) 
    @staffs = Staff.all
     
  end


  # POST CUSTOMER FEEDBACK 


    def update
      @idea = Idea.find(params[:id])
      @customer_feedback = @idea.customers.find(params[:id]) 
        if @idea.update(idea_params)
          redirect_to ideas_path
        else
          render 'edit'
      end
    end



  def show
    @idea = idea.find(params[:id])
  end

  private


  def idea_params
    params.require(:idea).permit(:title, :staff_id, :description)
  end
end
