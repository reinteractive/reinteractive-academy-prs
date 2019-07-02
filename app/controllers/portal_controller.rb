class PortalController < ApplicationController
  before_action :set_portal_header

  def index
  end

  def set_portal_header
    @page_header = "portal"
  end
end
