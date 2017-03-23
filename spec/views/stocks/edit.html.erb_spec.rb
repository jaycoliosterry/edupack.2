require 'rails_helper'

RSpec.describe "stocks/edit", type: :view do
  before(:each) do
    @stock = assign(:stock, Stock.create!(
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

  it "renders the edit stock form" do
    render

    assert_select "form[action=?][method=?]", stock_path(@stock), "post" do

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
