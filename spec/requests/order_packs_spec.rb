require 'rails_helper'

RSpec.describe "OrderPacks", type: :request do
  describe "GET /order_packs" do
    it "works! (now write some real specs)" do
      get order_packs_path
      expect(response).to have_http_status(200)
    end
  end
end
