require 'rails_helper'

RSpec.describe "address_groups/show", type: :view do
  before(:each) do
    @address_group = assign(:address_group, AddressGroup.create!(
      :name => "Name",
      :description => "Description",
      :account => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(//)
  end
end
