require 'rails_helper'

RSpec.describe "stock_groups/new", type: :view do
  before(:each) do
    assign(:stock_group, StockGroup.new(
      :name => "MyString",
      :description => "MyString",
      :account => nil
    ))
  end

  it "renders new stock_group form" do
    render

    assert_select "form[action=?][method=?]", stock_groups_path, "post" do

      assert_select "input#stock_group_name[name=?]", "stock_group[name]"

      assert_select "input#stock_group_description[name=?]", "stock_group[description]"

      assert_select "input#stock_group_account_id[name=?]", "stock_group[account_id]"
    end
  end
end
