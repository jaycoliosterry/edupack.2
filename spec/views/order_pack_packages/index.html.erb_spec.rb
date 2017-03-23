require 'rails_helper'

RSpec.describe "order_pack_packages/index", type: :view do
  before(:each) do
    assign(:order_pack_packages, [
      OrderPackPackage.create!(
        :origin => "Origin",
        :destination => "Destination",
        :status => "Status",
        :history => "MyText",
        :waybill => "Waybill",
        :total_pieces => 2,
        :piece => 3,
        :order => nil,
        :order_pack => nil
      ),
      OrderPackPackage.create!(
        :origin => "Origin",
        :destination => "Destination",
        :status => "Status",
        :history => "MyText",
        :waybill => "Waybill",
        :total_pieces => 2,
        :piece => 3,
        :order => nil,
        :order_pack => nil
      )
    ])
  end

  it "renders a list of order_pack_packages" do
    render
    assert_select "tr>td", :text => "Origin".to_s, :count => 2
    assert_select "tr>td", :text => "Destination".to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Waybill".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
