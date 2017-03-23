require 'rails_helper'

RSpec.describe "email_templates/index", type: :view do
  before(:each) do
    assign(:email_templates, [
      EmailTemplate.create!(
        :name => "Name",
        :reply_to_email => "Reply To Email",
        :subject => "Subject",
        :body => "MyText",
        :css => "MyText",
        :account => nil,
        :order => nil
      ),
      EmailTemplate.create!(
        :name => "Name",
        :reply_to_email => "Reply To Email",
        :subject => "Subject",
        :body => "MyText",
        :css => "MyText",
        :account => nil,
        :order => nil
      )
    ])
  end

  it "renders a list of email_templates" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Reply To Email".to_s, :count => 2
    assert_select "tr>td", :text => "Subject".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
