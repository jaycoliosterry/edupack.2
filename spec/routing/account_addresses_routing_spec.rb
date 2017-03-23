require "rails_helper"

RSpec.describe AccountAddressesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/account_addresses").to route_to("account_addresses#index")
    end

    it "routes to #new" do
      expect(:get => "/account_addresses/new").to route_to("account_addresses#new")
    end

    it "routes to #show" do
      expect(:get => "/account_addresses/1").to route_to("account_addresses#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/account_addresses/1/edit").to route_to("account_addresses#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/account_addresses").to route_to("account_addresses#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/account_addresses/1").to route_to("account_addresses#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/account_addresses/1").to route_to("account_addresses#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/account_addresses/1").to route_to("account_addresses#destroy", :id => "1")
    end

  end
end
