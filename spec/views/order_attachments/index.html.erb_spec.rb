require 'rails_helper'

RSpec.describe "order_attachments/index", type: :view do
  before(:each) do
    assign(:order_attachments, [
      OrderAttachment.create!(
        :order => nil,
        :url => "Url"
      ),
      OrderAttachment.create!(
        :order => nil,
        :url => "Url"
      )
    ])
  end

  it "renders a list of order_attachments" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Url".to_s, :count => 2
  end
end
