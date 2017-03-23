require 'rails_helper'

RSpec.describe "order_to_addresses/index", type: :view do
  before(:each) do
    assign(:order_to_addresses, [
      OrderToAddress.create!(),
      OrderToAddress.create!()
    ])
  end

  it "renders a list of order_to_addresses" do
    render
  end
end
