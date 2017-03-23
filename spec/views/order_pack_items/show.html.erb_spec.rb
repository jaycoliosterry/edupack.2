require 'rails_helper'

RSpec.describe "order_pack_items/show", type: :view do
  before(:each) do
    @order_pack_item = assign(:order_pack_item, OrderPackItem.create!(
      :quantity => 2,
      :stock => nil,
      :order => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
