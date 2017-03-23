require 'rails_helper'

RSpec.describe "account_addresses/show", type: :view do
  before(:each) do
    @account_address = assign(:account_address, AccountAddress.create!(
      :address1 => "Address1",
      :address2 => "Address2",
      :address3 => "Address3",
      :address4 => "Address4",
      :country => "Country",
      :postcode => "Postcode",
      :name => "Name",
      :email => "Email",
      :telephone => "Telephone",
      :account => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Address1/)
    expect(rendered).to match(/Address2/)
    expect(rendered).to match(/Address3/)
    expect(rendered).to match(/Address4/)
    expect(rendered).to match(/Country/)
    expect(rendered).to match(/Postcode/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Telephone/)
    expect(rendered).to match(//)
  end
end
