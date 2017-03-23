require 'rails_helper'

RSpec.describe "ExpressPrices", type: :request do
  describe "GET /express_prices" do
    it "works! (now write some real specs)" do
      get express_prices_path
      expect(response).to have_http_status(200)
    end
  end
end
