require 'rails_helper'

RSpec.describe "express_prices/show", type: :view do
  before(:each) do
    @express_price = assign(:express_price, ExpressPrice.create!(
      :weight => "9.99",
      :zone1 => "9.99",
      :zone2 => "9.99",
      :zone3 => "9.99",
      :zone4 => "9.99",
      :zone5 => "9.99",
      :zone6 => "9.99",
      :zone7 => "9.99",
      :zone8 => "9.99",
      :zone9 => "9.99",
      :zone10 => "9.99",
      :zone11 => "9.99",
      :zone12 => "9.99",
      :zone13 => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
  end
end
