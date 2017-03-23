require 'rails_helper'

RSpec.describe "account_addresses/index", type: :view do
  before(:each) do
    assign(:account_addresses, [
      AccountAddress.create!(
        :address1 => "Address1",
        :address2 => "Address2",
        :address3 => "Address3",
        :address4 => "Address4",
        :country => "Country",
        :postcode => "Postcode",
        :name => "Name",
        :email => "Email",
        :telephone => "Telephone",
        :account => nil
      ),
      AccountAddress.create!(
        :address1 => "Address1",
        :address2 => "Address2",
        :address3 => "Address3",
        :address4 => "Address4",
        :country => "Country",
        :postcode => "Postcode",
        :name => "Name",
        :email => "Email",
        :telephone => "Telephone",
        :account => nil
      )
    ])
  end

  it "renders a list of account_addresses" do
    render
    assert_select "tr>td", :text => "Address1".to_s, :count => 2
    assert_select "tr>td", :text => "Address2".to_s, :count => 2
    assert_select "tr>td", :text => "Address3".to_s, :count => 2
    assert_select "tr>td", :text => "Address4".to_s, :count => 2
    assert_select "tr>td", :text => "Country".to_s, :count => 2
    assert_select "tr>td", :text => "Postcode".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Telephone".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
