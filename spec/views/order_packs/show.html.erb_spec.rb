require 'rails_helper'

RSpec.describe "order_packs/show", type: :view do
  before(:each) do
    @order_pack = assign(:order_pack, OrderPack.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/Customs/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(//)
  end
end
