require 'rails_helper'

RSpec.describe "OrderAttachments", type: :request do
  describe "GET /order_attachments" do
    it "works! (now write some real specs)" do
      get order_attachments_path
      expect(response).to have_http_status(200)
    end
  end
end
