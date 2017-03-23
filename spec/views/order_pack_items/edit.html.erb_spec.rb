require 'rails_helper'

RSpec.describe "order_pack_items/edit", type: :view do
  before(:each) do
    @order_pack_item = assign(:order_pack_item, OrderPackItem.create!(
      :quantity => 1,
      :stock => nil,
      :order => nil
    ))
  end

  it "renders the edit order_pack_item form" do
    render

    assert_select "form[action=?][method=?]", order_pack_item_path(@order_pack_item), "post" do

      assert_select "input#order_pack_item_quantity[name=?]", "order_pack_item[quantity]"

      assert_select "input#order_pack_item_stock_id[name=?]", "order_pack_item[stock_id]"

      assert_select "input#order_pack_item_order_id[name=?]", "order_pack_item[order_id]"
    end
  end
end
