require 'rails_helper'

RSpec.describe "OrderPackItems", type: :request do
  describe "GET /order_pack_items" do
    it "works! (now write some real specs)" do
      get order_pack_items_path
      expect(response).to have_http_status(200)
    end
  end
end
