FactoryGirl.define do
  factory :invoice_line_item do
    description "MyText"
    price "9.99"
    tax "9.99"
    invoice nil
  end
end
