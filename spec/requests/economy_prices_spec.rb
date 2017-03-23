require 'rails_helper'

RSpec.describe "EconomyPrices", type: :request do
  describe "GET /economy_prices" do
    it "works! (now write some real specs)" do
      get economy_prices_path
      expect(response).to have_http_status(200)
    end
  end
end
