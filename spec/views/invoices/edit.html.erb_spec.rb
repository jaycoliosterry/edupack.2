require 'rails_helper'

RSpec.describe "invoices/edit", type: :view do
  before(:each) do
    @invoice = assign(:invoice, Invoice.create!(
      :order_refs => "MyText",
      :total_cost => "9.99",
      :invoice_number => "MyString",
      :status => "MyString",
      :tax => "9.99",
      :sent => false,
      :manual => false,
      :purchase_order_number => "MyString",
      :comment => "MyText",
      :type => "",
      :account => nil
    ))
  end

  it "renders the edit invoice form" do
    render

    assert_select "form[action=?][method=?]", invoice_path(@invoice), "post" do

      assert_select "textarea#invoice_order_refs[name=?]", "invoice[order_refs]"

      assert_select "input#invoice_total_cost[name=?]", "invoice[total_cost]"

      assert_select "input#invoice_invoice_number[name=?]", "invoice[invoice_number]"

      assert_select "input#invoice_status[name=?]", "invoice[status]"

      assert_select "input#invoice_tax[name=?]", "invoice[tax]"

      assert_select "input#invoice_sent[name=?]", "invoice[sent]"

      assert_select "input#invoice_manual[name=?]", "invoice[manual]"

      assert_select "input#invoice_purchase_order_number[name=?]", "invoice[purchase_order_number]"

      assert_select "textarea#invoice_comment[name=?]", "invoice[comment]"

      assert_select "input#invoice_type[name=?]", "invoice[type]"

      assert_select "input#invoice_account_id[name=?]", "invoice[account_id]"
    end
  end
end
