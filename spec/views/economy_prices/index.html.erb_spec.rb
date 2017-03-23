require 'rails_helper'

RSpec.describe "economy_prices/index", type: :view do
  before(:each) do
    assign(:economy_prices, [
      EconomyPrice.create!(
        :weight => "9.99",
        :zone1 => "9.99",
        :zone2 => "9.99",
        :zone3 => "9.99",
        :zone4 => "9.99",
        :zone5 => "9.99",
        :zone6 => "9.99",
        :zone7 => "9.99",
        :zone8 => "9.99",
        :zone9 => "9.99",
        :zone10 => "9.99",
        :zone11 => "9.99",
        :zone12 => "9.99",
        :zone13 => "9.99"
      ),
      EconomyPrice.create!(
        :weight => "9.99",
        :zone1 => "9.99",
        :zone2 => "9.99",
        :zone3 => "9.99",
        :zone4 => "9.99",
        :zone5 => "9.99",
        :zone6 => "9.99",
        :zone7 => "9.99",
        :zone8 => "9.99",
        :zone9 => "9.99",
        :zone10 => "9.99",
        :zone11 => "9.99",
        :zone12 => "9.99",
        :zone13 => "9.99"
      )
    ])
  end

  it "renders a list of economy_prices" do
    render
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
