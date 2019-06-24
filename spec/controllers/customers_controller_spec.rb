require 'rails_helper'

RSpec.describe CustomersController, type: :controller do

  describe "GET #welcomes" do
    it "returns http success" do
      get :welcomes
      expect(response).to have_http_status(:success)
    end
  end

end
