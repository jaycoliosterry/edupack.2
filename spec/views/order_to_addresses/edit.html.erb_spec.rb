require 'rails_helper'

RSpec.describe "order_to_addresses/edit", type: :view do
  before(:each) do
    @order_to_address = assign(:order_to_address, OrderToAddress.create!())
  end

  it "renders the edit order_to_address form" do
    render

    assert_select "form[action=?][method=?]", order_to_address_path(@order_to_address), "post" do
    end
  end
end
