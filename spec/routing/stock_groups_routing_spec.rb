require "rails_helper"

RSpec.describe StockGroupsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/stock_groups").to route_to("stock_groups#index")
    end

    it "routes to #new" do
      expect(:get => "/stock_groups/new").to route_to("stock_groups#new")
    end

    it "routes to #show" do
      expect(:get => "/stock_groups/1").to route_to("stock_groups#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/stock_groups/1/edit").to route_to("stock_groups#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/stock_groups").to route_to("stock_groups#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/stock_groups/1").to route_to("stock_groups#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/stock_groups/1").to route_to("stock_groups#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/stock_groups/1").to route_to("stock_groups#destroy", :id => "1")
    end

  end
end
