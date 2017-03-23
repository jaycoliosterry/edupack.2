require 'rails_helper'

RSpec.describe "address_groups/index", type: :view do
  before(:each) do
    assign(:address_groups, [
      AddressGroup.create!(
        :name => "Name",
        :description => "Description",
        :account => nil
      ),
      AddressGroup.create!(
        :name => "Name",
        :description => "Description",
        :account => nil
      )
    ])
  end

  it "renders a list of address_groups" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
