require 'rails_helper'

RSpec.describe "stock_groups/edit", type: :view do
  before(:each) do
    @stock_group = assign(:stock_group, StockGroup.create!(
      :name => "MyString",
      :description => "MyString",
      :account => nil
    ))
  end

  it "renders the edit stock_group form" do
    render

    assert_select "form[action=?][method=?]", stock_group_path(@stock_group), "post" do

      assert_select "input#stock_group_name[name=?]", "stock_group[name]"

      assert_select "input#stock_group_description[name=?]", "stock_group[description]"

      assert_select "input#stock_group_account_id[name=?]", "stock_group[account_id]"
    end
  end
end
