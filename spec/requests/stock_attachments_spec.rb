require 'rails_helper'

RSpec.describe "StockAttachments", type: :request do
  describe "GET /stock_attachments" do
    it "works! (now write some real specs)" do
      get stock_attachments_path
      expect(response).to have_http_status(200)
    end
  end
end
