require 'rails_helper'

RSpec.describe "invoices/index", type: :view do
  before(:each) do
    assign(:invoices, [
      Invoice.create!(
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
      ),
      Invoice.create!(
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
      )
    ])
  end

  it "renders a list of invoices" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Invoice Number".to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Purchase Order Number".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Type".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
