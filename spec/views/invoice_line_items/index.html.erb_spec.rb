require 'rails_helper'

RSpec.describe "invoice_line_items/index", type: :view do
  before(:each) do
    assign(:invoice_line_items, [
      InvoiceLineItem.create!(
        :description => "MyText",
        :price => "9.99",
        :tax => "9.99",
        :invoice => nil
      ),
      InvoiceLineItem.create!(
        :description => "MyText",
        :price => "9.99",
        :tax => "9.99",
        :invoice => nil
      )
    ])
  end

  it "renders a list of invoice_line_items" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
