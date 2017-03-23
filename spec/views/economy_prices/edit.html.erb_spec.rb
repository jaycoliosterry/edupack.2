require 'rails_helper'

RSpec.describe "economy_prices/edit", type: :view do
  before(:each) do
    @economy_price = assign(:economy_price, EconomyPrice.create!(
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
    ))
  end

  it "renders the edit economy_price form" do
    render

    assert_select "form[action=?][method=?]", economy_price_path(@economy_price), "post" do

      assert_select "input#economy_price_weight[name=?]", "economy_price[weight]"

      assert_select "input#economy_price_zone1[name=?]", "economy_price[zone1]"

      assert_select "input#economy_price_zone2[name=?]", "economy_price[zone2]"

      assert_select "input#economy_price_zone3[name=?]", "economy_price[zone3]"

      assert_select "input#economy_price_zone4[name=?]", "economy_price[zone4]"

      assert_select "input#economy_price_zone5[name=?]", "economy_price[zone5]"

      assert_select "input#economy_price_zone6[name=?]", "economy_price[zone6]"

      assert_select "input#economy_price_zone7[name=?]", "economy_price[zone7]"

      assert_select "input#economy_price_zone8[name=?]", "economy_price[zone8]"

      assert_select "input#economy_price_zone9[name=?]", "economy_price[zone9]"

      assert_select "input#economy_price_zone10[name=?]", "economy_price[zone10]"

      assert_select "input#economy_price_zone11[name=?]", "economy_price[zone11]"

      assert_select "input#economy_price_zone12[name=?]", "economy_price[zone12]"

      assert_select "input#economy_price_zone13[name=?]", "economy_price[zone13]"
    end
  end
end
