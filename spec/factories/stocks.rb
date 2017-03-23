FactoryGirl.define do
  factory :stock do
    name "MyString"
    description "MyText"
    stock_level 1
    storage_location "MyString"
    weight "9.99"
    width "9.99"
    length "9.99"
    depth "9.99"
    stock_group nil
    account nil
  end
end
