require 'rails_helper'

RSpec.describe "order_packs/new", type: :view do
  before(:each) do
    assign(:order_pack, OrderPack.new(
      :weight => "9.99",
      :width => "9.99",
      :length => "9.99",
      :depth => "9.99",
      :customs => "MyString",
      :customs_detail => "MyText",
      :description => "MyString",
      :quantity => 1,
      :customs_value => "9.99",
      :cost => "9.99",
      :order => nil
    ))
  end

  it "renders new order_pack form" do
    render

    assert_select "form[action=?][method=?]", order_packs_path, "post" do

      assert_select "input#order_pack_weight[name=?]", "order_pack[weight]"

      assert_select "input#order_pack_width[name=?]", "order_pack[width]"

      assert_select "input#order_pack_length[name=?]", "order_pack[length]"

      assert_select "input#order_pack_depth[name=?]", "order_pack[depth]"

      assert_select "input#order_pack_customs[name=?]", "order_pack[customs]"

      assert_select "textarea#order_pack_customs_detail[name=?]", "order_pack[customs_detail]"

      assert_select "input#order_pack_description[name=?]", "order_pack[description]"

      assert_select "input#order_pack_quantity[name=?]", "order_pack[quantity]"

      assert_select "input#order_pack_customs_value[name=?]", "order_pack[customs_value]"

      assert_select "input#order_pack_cost[name=?]", "order_pack[cost]"

      assert_select "input#order_pack_order_id[name=?]", "order_pack[order_id]"
    end
  end
end
