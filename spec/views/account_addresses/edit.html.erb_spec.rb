require 'rails_helper'

RSpec.describe "account_addresses/edit", type: :view do
  before(:each) do
    @account_address = assign(:account_address, AccountAddress.create!(
      :address1 => "MyString",
      :address2 => "MyString",
      :address3 => "MyString",
      :address4 => "MyString",
      :country => "MyString",
      :postcode => "MyString",
      :name => "MyString",
      :email => "MyString",
      :telephone => "MyString",
      :account => nil
    ))
  end

  it "renders the edit account_address form" do
    render

    assert_select "form[action=?][method=?]", account_address_path(@account_address), "post" do

      assert_select "input#account_address_address1[name=?]", "account_address[address1]"

      assert_select "input#account_address_address2[name=?]", "account_address[address2]"

      assert_select "input#account_address_address3[name=?]", "account_address[address3]"

      assert_select "input#account_address_address4[name=?]", "account_address[address4]"

      assert_select "input#account_address_country[name=?]", "account_address[country]"

      assert_select "input#account_address_postcode[name=?]", "account_address[postcode]"

      assert_select "input#account_address_name[name=?]", "account_address[name]"

      assert_select "input#account_address_email[name=?]", "account_address[email]"

      assert_select "input#account_address_telephone[name=?]", "account_address[telephone]"

      assert_select "input#account_address_account_id[name=?]", "account_address[account_id]"
    end
  end
end
