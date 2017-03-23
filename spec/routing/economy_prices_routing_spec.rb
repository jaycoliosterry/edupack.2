require "rails_helper"

RSpec.describe EconomyPricesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/economy_prices").to route_to("economy_prices#index")
    end

    it "routes to #new" do
      expect(:get => "/economy_prices/new").to route_to("economy_prices#new")
    end

    it "routes to #show" do
      expect(:get => "/economy_prices/1").to route_to("economy_prices#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/economy_prices/1/edit").to route_to("economy_prices#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/economy_prices").to route_to("economy_prices#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/economy_prices/1").to route_to("economy_prices#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/economy_prices/1").to route_to("economy_prices#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/economy_prices/1").to route_to("economy_prices#destroy", :id => "1")
    end

  end
end
