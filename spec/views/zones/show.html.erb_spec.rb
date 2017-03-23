require 'rails_helper'

RSpec.describe "zones/show", type: :view do
  before(:each) do
    @zone = assign(:zone, Zone.create!(
      :country => "Country",
      :zone => 2,
      :expresstime => "Expresstime",
      :economytime => "Economytime",
      :iva => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Country/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Expresstime/)
    expect(rendered).to match(/Economytime/)
    expect(rendered).to match(/false/)
  end
end
