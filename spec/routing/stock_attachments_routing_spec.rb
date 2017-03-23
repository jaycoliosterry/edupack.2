require "rails_helper"

RSpec.describe StockAttachmentsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/stock_attachments").to route_to("stock_attachments#index")
    end

    it "routes to #new" do
      expect(:get => "/stock_attachments/new").to route_to("stock_attachments#new")
    end

    it "routes to #show" do
      expect(:get => "/stock_attachments/1").to route_to("stock_attachments#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/stock_attachments/1/edit").to route_to("stock_attachments#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/stock_attachments").to route_to("stock_attachments#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/stock_attachments/1").to route_to("stock_attachments#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/stock_attachments/1").to route_to("stock_attachments#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/stock_attachments/1").to route_to("stock_attachments#destroy", :id => "1")
    end

  end
end
