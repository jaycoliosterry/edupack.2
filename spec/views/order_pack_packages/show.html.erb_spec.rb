require 'rails_helper'

RSpec.describe "order_pack_packages/show", type: :view do
  before(:each) do
    @order_pack_package = assign(:order_pack_package, OrderPackPackage.create!(
      :origin => "Origin",
      :destination => "Destination",
      :status => "Status",
      :history => "MyText",
      :waybill => "Waybill",
      :total_pieces => 2,
      :piece => 3,
      :order => nil,
      :order_pack => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Origin/)
    expect(rendered).to match(/Destination/)
    expect(rendered).to match(/Status/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Waybill/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
