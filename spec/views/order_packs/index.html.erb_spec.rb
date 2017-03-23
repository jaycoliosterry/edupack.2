require 'rails_helper'

RSpec.describe "order_packs/index", type: :view do
  before(:each) do
    assign(:order_packs, [
      OrderPack.create!(
        :weight => "9.99",
        :width => "9.99",
        :length => "9.99",
        :depth => "9.99",
        :customs => "Customs",
        :customs_detail => "MyText",
        :description => "Description",
        :quantity => 2,
        :customs_value => "9.99",
        :cost => "9.99",
        :order => nil
      ),
      OrderPack.create!(
        :weight => "9.99",
        :width => "9.99",
        :length => "9.99",
        :depth => "9.99",
        :customs => "Customs",
        :customs_detail => "MyText",
        :description => "Description",
        :quantity => 2,
        :customs_value => "9.99",
        :cost => "9.99",
        :order => nil
      )
    ])
  end

  it "renders a list of order_packs" do
    render
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Customs".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
