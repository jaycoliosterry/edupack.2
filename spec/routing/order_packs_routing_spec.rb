require "rails_helper"

RSpec.describe OrderPacksController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/order_packs").to route_to("order_packs#index")
    end

    it "routes to #new" do
      expect(:get => "/order_packs/new").to route_to("order_packs#new")
    end

    it "routes to #show" do
      expect(:get => "/order_packs/1").to route_to("order_packs#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/order_packs/1/edit").to route_to("order_packs#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/order_packs").to route_to("order_packs#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/order_packs/1").to route_to("order_packs#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/order_packs/1").to route_to("order_packs#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/order_packs/1").to route_to("order_packs#destroy", :id => "1")
    end

  end
end
