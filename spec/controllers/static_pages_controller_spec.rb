require 'rails_helper'

RSpec.describe StaticPagesController, type: :controller do

  describe "GET #contributors" do
    it "returns http success" do
      get :contributors
      expect(response).to have_http_status(:success)
    end
  end

end
