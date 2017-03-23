FactoryGirl.define do
  factory :email_template do
    name "MyString"
    reply_to_email "MyString"
    subject "MyString"
    body "MyText"
    css "MyText"
    account nil
    order nil
  end
end
