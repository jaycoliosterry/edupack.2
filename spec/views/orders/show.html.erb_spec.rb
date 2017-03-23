require 'rails_helper'

RSpec.describe "orders/show", type: :view do
  before(:each) do
    @order = assign(:order, Order.create!(
      :error => false,
      :description => "Description",
      :total_cost => "9.99",
      :tax => "9.99",
      :cost => "9.99",
      :type => 2,
      :notify_me => false,
      :notify_receiver => false,
      :batch => false,
      :status => "Status",
      :service => "Service",
      :account => nil,
      :invoice => nil,
      :user => nil,
      :invoice_line_item => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Status/)
    expect(rendered).to match(/Service/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
