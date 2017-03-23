require 'rails_helper'

RSpec.describe "stocks/index", type: :view do
  before(:each) do
    assign(:stocks, [
      Stock.create!(
        :name => "Name",
        :description => "MyText",
        :stock_level => 2,
        :storage_location => "Storage Location",
        :weight => "9.99",
        :width => "9.99",
        :length => "9.99",
        :depth => "9.99",
        :stock_group => nil,
        :account => nil
      ),
      Stock.create!(
        :name => "Name",
        :description => "MyText",
        :stock_level => 2,
        :storage_location => "Storage Location",
        :weight => "9.99",
        :width => "9.99",
        :length => "9.99",
        :depth => "9.99",
        :stock_group => nil,
        :account => nil
      )
    ])
  end

  it "renders a list of stocks" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Storage Location".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
