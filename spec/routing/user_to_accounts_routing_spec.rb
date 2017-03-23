require "rails_helper"

RSpec.describe UserToAccountsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/user_to_accounts").to route_to("user_to_accounts#index")
    end

    it "routes to #new" do
      expect(:get => "/user_to_accounts/new").to route_to("user_to_accounts#new")
    end

    it "routes to #show" do
      expect(:get => "/user_to_accounts/1").to route_to("user_to_accounts#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/user_to_accounts/1/edit").to route_to("user_to_accounts#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/user_to_accounts").to route_to("user_to_accounts#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/user_to_accounts/1").to route_to("user_to_accounts#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/user_to_accounts/1").to route_to("user_to_accounts#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/user_to_accounts/1").to route_to("user_to_accounts#destroy", :id => "1")
    end

  end
end
