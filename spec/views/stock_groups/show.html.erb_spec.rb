require 'rails_helper'

RSpec.describe "stock_groups/show", type: :view do
  before(:each) do
    @stock_group = assign(:stock_group, StockGroup.create!(
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
