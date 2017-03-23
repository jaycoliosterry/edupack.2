FactoryGirl.define do
  factory :order do
    error false
    description "MyString"
    total_cost "9.99"
    tax "9.99"
    cost "9.99"
    type 1
    notify_me false
    notify_receiver false
    deliver_by "2017-03-23 15:57:24"
    batch false
    status "MyString"
    service "MyString"
    account nil
    invoice nil
    user nil
    invoice_line_item nil
  end
end
