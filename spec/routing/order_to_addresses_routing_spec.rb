require "rails_helper"

RSpec.describe OrderToAddressesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/order_to_addresses").to route_to("order_to_addresses#index")
    end

    it "routes to #new" do
      expect(:get => "/order_to_addresses/new").to route_to("order_to_addresses#new")
    end

    it "routes to #show" do
      expect(:get => "/order_to_addresses/1").to route_to("order_to_addresses#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/order_to_addresses/1/edit").to route_to("order_to_addresses#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/order_to_addresses").to route_to("order_to_addresses#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/order_to_addresses/1").to route_to("order_to_addresses#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/order_to_addresses/1").to route_to("order_to_addresses#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/order_to_addresses/1").to route_to("order_to_addresses#destroy", :id => "1")
    end

  end
end
