require 'rails_helper'

RSpec.describe "accounts/show", type: :view do
  before(:each) do
    @account = assign(:account, Account.create!(
      :name => "Name",
      :phone => "Phone",
      :website => "Website",
      :finance_contact_name => "Finance Contact Name",
      :finance_contact_email => "Finance Contact Email",
      :description => "Description",
      :pays_tax => false,
      :pricing_tier => "Pricing Tier"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Phone/)
    expect(rendered).to match(/Website/)
    expect(rendered).to match(/Finance Contact Name/)
    expect(rendered).to match(/Finance Contact Email/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Pricing Tier/)
  end
end
