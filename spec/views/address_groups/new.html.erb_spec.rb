require 'rails_helper'

RSpec.describe "address_groups/new", type: :view do
  before(:each) do
    assign(:address_group, AddressGroup.new(
      :name => "MyString",
      :description => "MyString",
      :account => nil
    ))
  end

  it "renders new address_group form" do
    render

    assert_select "form[action=?][method=?]", address_groups_path, "post" do

      assert_select "input#address_group_name[name=?]", "address_group[name]"

      assert_select "input#address_group_description[name=?]", "address_group[description]"

      assert_select "input#address_group_account_id[name=?]", "address_group[account_id]"
    end
  end
end
