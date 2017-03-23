require 'rails_helper'

RSpec.describe "stock_attachments/edit", type: :view do
  before(:each) do
    @stock_attachment = assign(:stock_attachment, StockAttachment.create!(
      :stock => nil,
      :url => "MyString"
    ))
  end

  it "renders the edit stock_attachment form" do
    render

    assert_select "form[action=?][method=?]", stock_attachment_path(@stock_attachment), "post" do

      assert_select "input#stock_attachment_stock_id[name=?]", "stock_attachment[stock_id]"

      assert_select "input#stock_attachment_url[name=?]", "stock_attachment[url]"
    end
  end
end
