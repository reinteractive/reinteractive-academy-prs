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
    @staffs = Staff.all
  end

  def update
    @idea = Idea.find(params[:id]) 
    @staffs = Staff.all
      if @idea.update_attributes(idea_params)
        redirect_to ideas_path
      else
        render "edit"
      end
    end

  def show
    @idea = idea.find(params[:id])
  end

  private


  def idea_params
    params.require(:idea).permit(:title, staff_attributes: [:name, :last_name, :email])
  end
end
