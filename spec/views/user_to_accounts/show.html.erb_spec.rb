require 'rails_helper'

RSpec.describe "user_to_accounts/show", type: :view do
  before(:each) do
    @user_to_account = assign(:user_to_account, UserToAccount.create!(
      :account => nil,
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
