require 'rails_helper'

RSpec.describe "order_attachments/show", type: :view do
  before(:each) do
    @order_attachment = assign(:order_attachment, OrderAttachment.create!(
      :order => nil,
      :url => "Url"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Url/)
  end
end
