require 'rails_helper'

RSpec.describe "accounts/new", type: :view do
  before(:each) do
    assign(:account, Account.new(
      :name => "MyString",
      :phone => "MyString",
      :website => "MyString",
      :finance_contact_name => "MyString",
      :finance_contact_email => "MyString",
      :description => "MyString",
      :pays_tax => false,
      :pricing_tier => "MyString"
    ))
  end

  it "renders new account form" do
    render

    assert_select "form[action=?][method=?]", accounts_path, "post" do

      assert_select "input#account_name[name=?]", "account[name]"

      assert_select "input#account_phone[name=?]", "account[phone]"

      assert_select "input#account_website[name=?]", "account[website]"

      assert_select "input#account_finance_contact_name[name=?]", "account[finance_contact_name]"

      assert_select "input#account_finance_contact_email[name=?]", "account[finance_contact_email]"

      assert_select "input#account_description[name=?]", "account[description]"

      assert_select "input#account_pays_tax[name=?]", "account[pays_tax]"

      assert_select "input#account_pricing_tier[name=?]", "account[pricing_tier]"
    end
  end
end
