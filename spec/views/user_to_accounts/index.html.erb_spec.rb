require 'rails_helper'

RSpec.describe "user_to_accounts/index", type: :view do
  before(:each) do
    assign(:user_to_accounts, [
      UserToAccount.create!(
        :account => nil,
        :user => nil
      ),
      UserToAccount.create!(
        :account => nil,
        :user => nil
      )
    ])
  end

  it "renders a list of user_to_accounts" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
