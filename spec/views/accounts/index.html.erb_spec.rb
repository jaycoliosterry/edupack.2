require 'rails_helper'

RSpec.describe "accounts/index", type: :view do
  before(:each) do
    assign(:accounts, [
      Account.create!(
        :name => "Name",
        :phone => "Phone",
        :website => "Website",
        :finance_contact_name => "Finance Contact Name",
        :finance_contact_email => "Finance Contact Email",
        :description => "Description",
        :pays_tax => false,
        :pricing_tier => "Pricing Tier"
      ),
      Account.create!(
        :name => "Name",
        :phone => "Phone",
        :website => "Website",
        :finance_contact_name => "Finance Contact Name",
        :finance_contact_email => "Finance Contact Email",
        :description => "Description",
        :pays_tax => false,
        :pricing_tier => "Pricing Tier"
      )
    ])
  end

  it "renders a list of accounts" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Website".to_s, :count => 2
    assert_select "tr>td", :text => "Finance Contact Name".to_s, :count => 2
    assert_select "tr>td", :text => "Finance Contact Email".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Pricing Tier".to_s, :count => 2
  end
end
