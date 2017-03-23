require 'rails_helper'

RSpec.describe "email_templates/new", type: :view do
  before(:each) do
    assign(:email_template, EmailTemplate.new(
      :name => "MyString",
      :reply_to_email => "MyString",
      :subject => "MyString",
      :body => "MyText",
      :css => "MyText",
      :account => nil,
      :order => nil
    ))
  end

  it "renders new email_template form" do
    render

    assert_select "form[action=?][method=?]", email_templates_path, "post" do

      assert_select "input#email_template_name[name=?]", "email_template[name]"

      assert_select "input#email_template_reply_to_email[name=?]", "email_template[reply_to_email]"

      assert_select "input#email_template_subject[name=?]", "email_template[subject]"

      assert_select "textarea#email_template_body[name=?]", "email_template[body]"

      assert_select "textarea#email_template_css[name=?]", "email_template[css]"

      assert_select "input#email_template_account_id[name=?]", "email_template[account_id]"

      assert_select "input#email_template_order_id[name=?]", "email_template[order_id]"
    end
  end
end
