require 'rails_helper'

RSpec.describe "stock_attachments/index", type: :view do
  before(:each) do
    assign(:stock_attachments, [
      StockAttachment.create!(
        :stock => nil,
        :url => "Url"
      ),
      StockAttachment.create!(
        :stock => nil,
        :url => "Url"
      )
    ])
  end

  it "renders a list of stock_attachments" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Url".to_s, :count => 2
  end
end
