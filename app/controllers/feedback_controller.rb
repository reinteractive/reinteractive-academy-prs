class FeedbackController < ApplicationController
   

  def index
    @feedbacks = Feedback.all
  end

  def show
    @feedback = Feedback.find(params[:id])
  end

  def new
  end




  private 

  def feedback_params
    params.require(:feedback).permit(:description, :customer_id)
  end
end
