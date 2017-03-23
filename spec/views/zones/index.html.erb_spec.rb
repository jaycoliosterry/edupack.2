require 'rails_helper'

RSpec.describe "zones/index", type: :view do
  before(:each) do
    assign(:zones, [
      Zone.create!(
        :country => "Country",
        :zone => 2,
        :expresstime => "Expresstime",
        :economytime => "Economytime",
        :iva => false
      ),
      Zone.create!(
        :country => "Country",
        :zone => 2,
        :expresstime => "Expresstime",
        :economytime => "Economytime",
        :iva => false
      )
    ])
  end

  it "renders a list of zones" do
    render
    assert_select "tr>td", :text => "Country".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Expresstime".to_s, :count => 2
    assert_select "tr>td", :text => "Economytime".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
