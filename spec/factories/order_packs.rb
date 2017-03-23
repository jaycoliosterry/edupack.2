FactoryGirl.define do
  factory :order_pack do
    weight "9.99"
    width "9.99"
    length "9.99"
    depth "9.99"
    customs "MyString"
    customs_detail "MyText"
    description "MyString"
    quantity 1
    customs_value "9.99"
    cost "9.99"
    order nil
  end
end
