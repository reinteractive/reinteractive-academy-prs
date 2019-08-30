class FeedbackController < ApplicationController
   

  def index
    @feedbacks = Feedback.all
  end

  def new
    @feedback = Feedback.new
  end

  def create
    @feedback = Feedback.new(feedback_params)
    if @feedback.save
      redirect_to action: 'index'
    else
      render 'new'
    end
  end


  def show
    @feedback = Feedback.find(params[:id])
  end


  private 

  def feedback_params
    params.
      require(:feedback).
      permit(:description, :customer_id, customer_attribute: [ :name, :feedback ])
  end
end
