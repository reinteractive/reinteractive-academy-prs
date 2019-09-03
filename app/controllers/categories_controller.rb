class CategoriesController < ApplicationController
  def index
    @categories = Category.all
    @ideas = Idea.all
   
     
  end

  def new
    @category = Category.new
  end


  def create
    @category = Category.new(category_params)
      if @category.save
        redirect_to action: 'index'
      else
        render 'new'
      end
  end

  def edit
    @category = Category.find(params[:id])
  end

  def update
    @category = Staff.find(params[:id])
    if @category.update_attributes(categories_params)
      redirect_to categories_path
    else
      render action: 'edit'
    end
  end

private

  def category_params
    params.require(:category).permit(:name)
  end

end
