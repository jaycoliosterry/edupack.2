require 'rails_helper'

RSpec.describe "express_prices/new", type: :view do
  before(:each) do
    assign(:express_price, ExpressPrice.new(
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

  it "renders new express_price form" do
    render

    assert_select "form[action=?][method=?]", express_prices_path, "post" do

      assert_select "input#express_price_weight[name=?]", "express_price[weight]"

      assert_select "input#express_price_zone1[name=?]", "express_price[zone1]"

      assert_select "input#express_price_zone2[name=?]", "express_price[zone2]"

      assert_select "input#express_price_zone3[name=?]", "express_price[zone3]"

      assert_select "input#express_price_zone4[name=?]", "express_price[zone4]"

      assert_select "input#express_price_zone5[name=?]", "express_price[zone5]"

      assert_select "input#express_price_zone6[name=?]", "express_price[zone6]"

      assert_select "input#express_price_zone7[name=?]", "express_price[zone7]"

      assert_select "input#express_price_zone8[name=?]", "express_price[zone8]"

      assert_select "input#express_price_zone9[name=?]", "express_price[zone9]"

      assert_select "input#express_price_zone10[name=?]", "express_price[zone10]"

      assert_select "input#express_price_zone11[name=?]", "express_price[zone11]"

      assert_select "input#express_price_zone12[name=?]", "express_price[zone12]"

      assert_select "input#express_price_zone13[name=?]", "express_price[zone13]"
    end
  end
end
