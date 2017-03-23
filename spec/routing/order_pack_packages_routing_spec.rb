require "rails_helper"

RSpec.describe OrderPackPackagesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/order_pack_packages").to route_to("order_pack_packages#index")
    end

    it "routes to #new" do
      expect(:get => "/order_pack_packages/new").to route_to("order_pack_packages#new")
    end

    it "routes to #show" do
      expect(:get => "/order_pack_packages/1").to route_to("order_pack_packages#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/order_pack_packages/1/edit").to route_to("order_pack_packages#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/order_pack_packages").to route_to("order_pack_packages#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/order_pack_packages/1").to route_to("order_pack_packages#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/order_pack_packages/1").to route_to("order_pack_packages#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/order_pack_packages/1").to route_to("order_pack_packages#destroy", :id => "1")
    end

  end
end
