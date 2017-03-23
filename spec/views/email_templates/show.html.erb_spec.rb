require 'rails_helper'

RSpec.describe "email_templates/show", type: :view do
  before(:each) do
    @email_template = assign(:email_template, EmailTemplate.create!(
      :name => "Name",
      :reply_to_email => "Reply To Email",
      :subject => "Subject",
      :body => "MyText",
      :css => "MyText",
      :account => nil,
      :order => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Reply To Email/)
    expect(rendered).to match(/Subject/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
