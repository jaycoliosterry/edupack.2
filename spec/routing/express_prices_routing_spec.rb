require "rails_helper"

RSpec.describe ExpressPricesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/express_prices").to route_to("express_prices#index")
    end

    it "routes to #new" do
      expect(:get => "/express_prices/new").to route_to("express_prices#new")
    end

    it "routes to #show" do
      expect(:get => "/express_prices/1").to route_to("express_prices#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/express_prices/1/edit").to route_to("express_prices#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/express_prices").to route_to("express_prices#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/express_prices/1").to route_to("express_prices#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/express_prices/1").to route_to("express_prices#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/express_prices/1").to route_to("express_prices#destroy", :id => "1")
    end

  end
end
