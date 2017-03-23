require 'rails_helper'

RSpec.describe "invoice_line_items/edit", type: :view do
  before(:each) do
    @invoice_line_item = assign(:invoice_line_item, InvoiceLineItem.create!(
      :description => "MyText",
      :price => "9.99",
      :tax => "9.99",
      :invoice => nil
    ))
  end

  it "renders the edit invoice_line_item form" do
    render

    assert_select "form[action=?][method=?]", invoice_line_item_path(@invoice_line_item), "post" do

      assert_select "textarea#invoice_line_item_description[name=?]", "invoice_line_item[description]"

      assert_select "input#invoice_line_item_price[name=?]", "invoice_line_item[price]"

      assert_select "input#invoice_line_item_tax[name=?]", "invoice_line_item[tax]"

      assert_select "input#invoice_line_item_invoice_id[name=?]", "invoice_line_item[invoice_id]"
    end
  end
end
