require 'rails_helper'

RSpec.describe "stock_attachments/new", type: :view do
  before(:each) do
    assign(:stock_attachment, StockAttachment.new(
      :stock => nil,
      :url => "MyString"
    ))
  end

  it "renders new stock_attachment form" do
    render

    assert_select "form[action=?][method=?]", stock_attachments_path, "post" do

      assert_select "input#stock_attachment_stock_id[name=?]", "stock_attachment[stock_id]"

      assert_select "input#stock_attachment_url[name=?]", "stock_attachment[url]"
    end
  end
end
