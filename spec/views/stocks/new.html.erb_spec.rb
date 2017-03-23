require 'rails_helper'

RSpec.describe "stocks/new", type: :view do
  before(:each) do
    assign(:stock, Stock.new(
      :name => "MyString",
      :description => "MyText",
      :stock_level => 1,
      :storage_location => "MyString",
      :weight => "9.99",
      :width => "9.99",
      :length => "9.99",
      :depth => "9.99",
      :stock_group => nil,
      :account => nil
    ))
  end

  it "renders new stock form" do
    render

    assert_select "form[action=?][method=?]", stocks_path, "post" do

      assert_select "input#stock_name[name=?]", "stock[name]"

      assert_select "textarea#stock_description[name=?]", "stock[description]"

      assert_select "input#stock_stock_level[name=?]", "stock[stock_level]"

      assert_select "input#stock_storage_location[name=?]", "stock[storage_location]"

      assert_select "input#stock_weight[name=?]", "stock[weight]"

      assert_select "input#stock_width[name=?]", "stock[width]"

      assert_select "input#stock_length[name=?]", "stock[length]"

      assert_select "input#stock_depth[name=?]", "stock[depth]"

      assert_select "input#stock_stock_group_id[name=?]", "stock[stock_group_id]"

      assert_select "input#stock_account_id[name=?]", "stock[account_id]"
    end
  end
end
