require 'rails_helper'

RSpec.describe "OrderToAddresses", type: :request do
  describe "GET /order_to_addresses" do
    it "works! (now write some real specs)" do
      get order_to_addresses_path
      expect(response).to have_http_status(200)
    end
  end
end
