require 'rails_helper'

RSpec.describe "order_attachments/new", type: :view do
  before(:each) do
    assign(:order_attachment, OrderAttachment.new(
      :order => nil,
      :url => "MyString"
    ))
  end

  it "renders new order_attachment form" do
    render

    assert_select "form[action=?][method=?]", order_attachments_path, "post" do

      assert_select "input#order_attachment_order_id[name=?]", "order_attachment[order_id]"

      assert_select "input#order_attachment_url[name=?]", "order_attachment[url]"
    end
  end
end
