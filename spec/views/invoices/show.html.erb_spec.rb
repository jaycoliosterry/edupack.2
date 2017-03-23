require 'rails_helper'

RSpec.describe "invoices/show", type: :view do
  before(:each) do
    @invoice = assign(:invoice, Invoice.create!(
      :order_refs => "MyText",
      :total_cost => "9.99",
      :invoice_number => "Invoice Number",
      :status => "Status",
      :tax => "9.99",
      :sent => false,
      :manual => false,
      :purchase_order_number => "Purchase Order Number",
      :comment => "MyText",
      :type => "Type",
      :account => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/Invoice Number/)
    expect(rendered).to match(/Status/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Purchase Order Number/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Type/)
    expect(rendered).to match(//)
  end
end
