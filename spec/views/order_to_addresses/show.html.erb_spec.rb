require 'rails_helper'

RSpec.describe "order_to_addresses/show", type: :view do
  before(:each) do
    @order_to_address = assign(:order_to_address, OrderToAddress.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
