FactoryGirl.define do
  factory :invoice do
    order_refs "MyText"
    total_cost "9.99"
    invoice_number "MyString"
    date_issued "2017-03-23 15:58:21"
    date_due "2017-03-23 15:58:21"
    status "MyString"
    tax "9.99"
    sent false
    manual false
    purchase_order_number "MyString"
    comment "MyText"
    type ""
    account nil
  end
end
