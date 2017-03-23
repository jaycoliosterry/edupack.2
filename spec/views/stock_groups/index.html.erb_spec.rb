require 'rails_helper'

RSpec.describe "stock_groups/index", type: :view do
  before(:each) do
    assign(:stock_groups, [
      StockGroup.create!(
        :name => "Name",
        :description => "Description",
        :account => nil
      ),
      StockGroup.create!(
        :name => "Name",
        :description => "Description",
        :account => nil
      )
    ])
  end

  it "renders a list of stock_groups" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
