require 'rails_helper'

RSpec.describe "orders/edit", type: :view do
  before(:each) do
    @order = assign(:order, Order.create!(
      :error => false,
      :description => "MyString",
      :total_cost => "9.99",
      :tax => "9.99",
      :cost => "9.99",
      :type => 1,
      :notify_me => false,
      :notify_receiver => false,
      :batch => false,
      :status => "MyString",
      :service => "MyString",
      :account => nil,
      :invoice => nil,
      :user => nil,
      :invoice_line_item => nil
    ))
  end

  it "renders the edit order form" do
    render

    assert_select "form[action=?][method=?]", order_path(@order), "post" do

      assert_select "input#order_error[name=?]", "order[error]"

      assert_select "input#order_description[name=?]", "order[description]"

      assert_select "input#order_total_cost[name=?]", "order[total_cost]"

      assert_select "input#order_tax[name=?]", "order[tax]"

      assert_select "input#order_cost[name=?]", "order[cost]"

      assert_select "input#order_type[name=?]", "order[type]"

      assert_select "input#order_notify_me[name=?]", "order[notify_me]"

      assert_select "input#order_notify_receiver[name=?]", "order[notify_receiver]"

      assert_select "input#order_batch[name=?]", "order[batch]"

      assert_select "input#order_status[name=?]", "order[status]"

      assert_select "input#order_service[name=?]", "order[service]"

      assert_select "input#order_account_id[name=?]", "order[account_id]"

      assert_select "input#order_invoice_id[name=?]", "order[invoice_id]"

      assert_select "input#order_user_id[name=?]", "order[user_id]"

      assert_select "input#order_invoice_line_item_id[name=?]", "order[invoice_line_item_id]"
    end
  end
end
