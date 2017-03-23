require 'rails_helper'

RSpec.describe "order_to_addresses/new", type: :view do
  before(:each) do
    assign(:order_to_address, OrderToAddress.new())
  end

  it "renders new order_to_address form" do
    render

    assert_select "form[action=?][method=?]", order_to_addresses_path, "post" do
    end
  end
end
