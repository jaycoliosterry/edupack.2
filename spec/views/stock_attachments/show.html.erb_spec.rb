require 'rails_helper'

RSpec.describe "stock_attachments/show", type: :view do
  before(:each) do
    @stock_attachment = assign(:stock_attachment, StockAttachment.create!(
      :stock => nil,
      :url => "Url"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Url/)
  end
end
