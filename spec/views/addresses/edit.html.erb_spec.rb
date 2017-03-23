require 'rails_helper'

RSpec.describe "addresses/edit", type: :view do
  before(:each) do
    @address = assign(:address, Address.create!(
      :company_name => "MyString",
      :contact_name => "MyString",
      :job_title => "MyString",
      :department => "MyString",
      :telephone => "MyString",
      :fax => "MyString",
      :email => "MyString",
      :street1 => "MyString",
      :street2 => "MyString",
      :city => "MyString",
      :state => "MyString",
      :country => "MyString",
      :zip => "MyString",
      :address_group => nil
    ))
  end

  it "renders the edit address form" do
    render

    assert_select "form[action=?][method=?]", address_path(@address), "post" do

      assert_select "input#address_company_name[name=?]", "address[company_name]"

      assert_select "input#address_contact_name[name=?]", "address[contact_name]"

      assert_select "input#address_job_title[name=?]", "address[job_title]"

      assert_select "input#address_department[name=?]", "address[department]"

      assert_select "input#address_telephone[name=?]", "address[telephone]"

      assert_select "input#address_fax[name=?]", "address[fax]"

      assert_select "input#address_email[name=?]", "address[email]"

      assert_select "input#address_street1[name=?]", "address[street1]"

      assert_select "input#address_street2[name=?]", "address[street2]"

      assert_select "input#address_city[name=?]", "address[city]"

      assert_select "input#address_state[name=?]", "address[state]"

      assert_select "input#address_country[name=?]", "address[country]"

      assert_select "input#address_zip[name=?]", "address[zip]"

      assert_select "input#address_address_group_id[name=?]", "address[address_group_id]"
    end
  end
end
