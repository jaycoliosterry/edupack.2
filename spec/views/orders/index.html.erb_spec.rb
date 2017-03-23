require 'rails_helper'

RSpec.describe "orders/index", type: :view do
  before(:each) do
    assign(:orders, [
      Order.create!(
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
      ),
      Order.create!(
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
      )
    ])
  end

  it "renders a list of orders" do
    render
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
    assert_select "tr>td", :text => "Service".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
