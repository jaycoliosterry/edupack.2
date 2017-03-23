require 'rails_helper'

RSpec.describe "invoice_line_items/show", type: :view do
  before(:each) do
    @invoice_line_item = assign(:invoice_line_item, InvoiceLineItem.create!(
      :description => "MyText",
      :price => "9.99",
      :tax => "9.99",
      :invoice => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(//)
  end
end
