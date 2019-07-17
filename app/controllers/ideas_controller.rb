class IdeasController < ApplicationController
  def index
    @ideas = Idea.all
  end

  def new
    @idea = Idea.new
  end

def create
  @idea = Idea.new(idea_params)
  if @idea.save
    redirect_to action: "index"
  else
    render 'new'
  end
end


  def edit
    @idea = Idea.find(params[:id])
  end

  def update
     @idea = Idea.find(params[:id])
    if @idea.update_attributes(idea_params)
      redirect_to ideas_path
    else
      render action: 'edit'
    end
  end

  def show
    # @idea = idea.find(params[:id])
  end
  private

  def idea_params
    params.require(:idea).permit(:name, :last_name)
  end
end


