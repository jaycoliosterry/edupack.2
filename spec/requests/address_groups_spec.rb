require 'rails_helper'

RSpec.describe "AddressGroups", type: :request do
  describe "GET /address_groups" do
    it "works! (now write some real specs)" do
      get address_groups_path
      expect(response).to have_http_status(200)
    end
  end
end
