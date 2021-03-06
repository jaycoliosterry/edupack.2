require "rails_helper"

RSpec.describe OrderPackItemsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/order_pack_items").to route_to("order_pack_items#index")
    end

    it "routes to #new" do
      expect(:get => "/order_pack_items/new").to route_to("order_pack_items#new")
    end

    it "routes to #show" do
      expect(:get => "/order_pack_items/1").to route_to("order_pack_items#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/order_pack_items/1/edit").to route_to("order_pack_items#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/order_pack_items").to route_to("order_pack_items#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/order_pack_items/1").to route_to("order_pack_items#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/order_pack_items/1").to route_to("order_pack_items#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/order_pack_items/1").to route_to("order_pack_items#destroy", :id => "1")
    end

  end
end
