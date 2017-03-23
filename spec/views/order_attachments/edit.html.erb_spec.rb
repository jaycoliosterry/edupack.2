require 'rails_helper'

RSpec.describe "order_attachments/edit", type: :view do
  before(:each) do
    @order_attachment = assign(:order_attachment, OrderAttachment.create!(
      :order => nil,
      :url => "MyString"
    ))
  end

  it "renders the edit order_attachment form" do
    render

    assert_select "form[action=?][method=?]", order_attachment_path(@order_attachment), "post" do

      assert_select "input#order_attachment_order_id[name=?]", "order_attachment[order_id]"

      assert_select "input#order_attachment_url[name=?]", "order_attachment[url]"
    end
  end
end
