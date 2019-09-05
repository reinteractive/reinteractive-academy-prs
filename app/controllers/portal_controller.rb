class PortalController < ApplicationController
  before_action :set_portal_header
  

  def index
    @feedback = Feedback.new
  end

  

  def set_portal_header
    @page_header = "portal"
  end


  private 

  
  
end
