require "rails_helper"

RSpec.describe OrderAttachmentsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/order_attachments").to route_to("order_attachments#index")
    end

    it "routes to #new" do
      expect(:get => "/order_attachments/new").to route_to("order_attachments#new")
    end

    it "routes to #show" do
      expect(:get => "/order_attachments/1").to route_to("order_attachments#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/order_attachments/1/edit").to route_to("order_attachments#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/order_attachments").to route_to("order_attachments#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/order_attachments/1").to route_to("order_attachments#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/order_attachments/1").to route_to("order_attachments#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/order_attachments/1").to route_to("order_attachments#destroy", :id => "1")
    end

  end
end
