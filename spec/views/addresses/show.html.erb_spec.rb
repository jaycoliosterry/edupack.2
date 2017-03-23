require 'rails_helper'

RSpec.describe "addresses/show", type: :view do
  before(:each) do
    @address = assign(:address, Address.create!(
      :company_name => "Company Name",
      :contact_name => "Contact Name",
      :job_title => "Job Title",
      :department => "Department",
      :telephone => "Telephone",
      :fax => "Fax",
      :email => "Email",
      :street1 => "Street1",
      :street2 => "Street2",
      :city => "City",
      :state => "State",
      :country => "Country",
      :zip => "Zip",
      :address_group => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Company Name/)
    expect(rendered).to match(/Contact Name/)
    expect(rendered).to match(/Job Title/)
    expect(rendered).to match(/Department/)
    expect(rendered).to match(/Telephone/)
    expect(rendered).to match(/Fax/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Street1/)
    expect(rendered).to match(/Street2/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(/Country/)
    expect(rendered).to match(/Zip/)
    expect(rendered).to match(//)
  end
end
