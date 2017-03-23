require 'rails_helper'

RSpec.describe "addresses/index", type: :view do
  before(:each) do
    assign(:addresses, [
      Address.create!(
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
      ),
      Address.create!(
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
      )
    ])
  end

  it "renders a list of addresses" do
    render
    assert_select "tr>td", :text => "Company Name".to_s, :count => 2
    assert_select "tr>td", :text => "Contact Name".to_s, :count => 2
    assert_select "tr>td", :text => "Job Title".to_s, :count => 2
    assert_select "tr>td", :text => "Department".to_s, :count => 2
    assert_select "tr>td", :text => "Telephone".to_s, :count => 2
    assert_select "tr>td", :text => "Fax".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Street1".to_s, :count => 2
    assert_select "tr>td", :text => "Street2".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "Country".to_s, :count => 2
    assert_select "tr>td", :text => "Zip".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
