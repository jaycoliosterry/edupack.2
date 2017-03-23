require 'rails_helper'

RSpec.describe "zones/edit", type: :view do
  before(:each) do
    @zone = assign(:zone, Zone.create!(
      :country => "MyString",
      :zone => 1,
      :expresstime => "MyString",
      :economytime => "MyString",
      :iva => false
    ))
  end

  it "renders the edit zone form" do
    render

    assert_select "form[action=?][method=?]", zone_path(@zone), "post" do

      assert_select "input#zone_country[name=?]", "zone[country]"

      assert_select "input#zone_zone[name=?]", "zone[zone]"

      assert_select "input#zone_expresstime[name=?]", "zone[expresstime]"

      assert_select "input#zone_economytime[name=?]", "zone[economytime]"

      assert_select "input#zone_iva[name=?]", "zone[iva]"
    end
  end
end
