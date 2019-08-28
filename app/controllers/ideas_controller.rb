# frozen_string_literal: true

class IdeasController < ApplicationController
  def index
    @ideas = Idea.all
    @status = Status.all
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
    @status = Status.find(params[:id])
    @categories = Category.all
    @staffs = Staff.all
    @customer = Customer.all.limit(3)
    # @ideas_of_staff = @idea.staff.find(params[:staff])
  end


  def update
    @idea = Idea.find(params[:id])
    @ideas_of_customers = @idea.customers.find(params[:id])
    @status = Status.find(params[:id])
    if @status && @idea.update(idea_params)
      redirect_to ideas_path
    else
      render 'edit'
    end
  end

  def show
    @idea = Idea.find(params[:id])
  end

  private

  def idea_params
    params.require(:idea).permit(:title, :staff_id, :description, :status_id, :stage)
  end
end
