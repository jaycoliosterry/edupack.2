require 'rails_helper'

RSpec.describe "user_to_accounts/edit", type: :view do
  before(:each) do
    @user_to_account = assign(:user_to_account, UserToAccount.create!(
      :account => nil,
      :user => nil
    ))
  end

  it "renders the edit user_to_account form" do
    render

    assert_select "form[action=?][method=?]", user_to_account_path(@user_to_account), "post" do

      assert_select "input#user_to_account_account_id[name=?]", "user_to_account[account_id]"

      assert_select "input#user_to_account_user_id[name=?]", "user_to_account[user_id]"
    end
  end
end
