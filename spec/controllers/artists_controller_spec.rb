require 'rails_helper'

RSpec.describe ArtistsController, type: :controller do
  describe "GET index" do
    before { get :index }    

    it "returns http success" do
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET show" do
    before { get :show }

    it "returns http success" do
      expect(response).to have_http_status(:success)
    end
  end
end
