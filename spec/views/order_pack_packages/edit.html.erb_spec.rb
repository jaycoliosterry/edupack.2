require 'rails_helper'

RSpec.describe "order_pack_packages/edit", type: :view do
  before(:each) do
    @order_pack_package = assign(:order_pack_package, OrderPackPackage.create!(
      :origin => "MyString",
      :destination => "MyString",
      :status => "MyString",
      :history => "MyText",
      :waybill => "MyString",
      :total_pieces => 1,
      :piece => 1,
      :order => nil,
      :order_pack => nil
    ))
  end

  it "renders the edit order_pack_package form" do
    render

    assert_select "form[action=?][method=?]", order_pack_package_path(@order_pack_package), "post" do

      assert_select "input#order_pack_package_origin[name=?]", "order_pack_package[origin]"

      assert_select "input#order_pack_package_destination[name=?]", "order_pack_package[destination]"

      assert_select "input#order_pack_package_status[name=?]", "order_pack_package[status]"

      assert_select "textarea#order_pack_package_history[name=?]", "order_pack_package[history]"

      assert_select "input#order_pack_package_waybill[name=?]", "order_pack_package[waybill]"

      assert_select "input#order_pack_package_total_pieces[name=?]", "order_pack_package[total_pieces]"

      assert_select "input#order_pack_package_piece[name=?]", "order_pack_package[piece]"

      assert_select "input#order_pack_package_order_id[name=?]", "order_pack_package[order_id]"

      assert_select "input#order_pack_package_order_pack_id[name=?]", "order_pack_package[order_pack_id]"
    end
  end
end
