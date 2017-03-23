FactoryGirl.define do
  factory :order_pack_package do
    origin "MyString"
    destination "MyString"
    status "MyString"
    history "MyText"
    waybill "MyString"
    total_pieces 1
    piece 1
    order nil
    order_pack nil
  end
end
