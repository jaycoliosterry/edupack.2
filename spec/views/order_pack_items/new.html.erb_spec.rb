require 'rails_helper'

RSpec.describe "order_pack_items/new", type: :view do
  before(:each) do
    assign(:order_pack_item, OrderPackItem.new(
      :quantity => 1,
      :stock => nil,
      :order => nil
    ))
  end

  it "renders new order_pack_item form" do
    render

    assert_select "form[action=?][method=?]", order_pack_items_path, "post" do

      assert_select "input#order_pack_item_quantity[name=?]", "order_pack_item[quantity]"

      assert_select "input#order_pack_item_stock_id[name=?]", "order_pack_item[stock_id]"

      assert_select "input#order_pack_item_order_id[name=?]", "order_pack_item[order_id]"
    end
  end
end
