class CreateOrdersOrderToAddresses < ActiveRecord::Migration
  def change
    create_table :orders_order_to_addresses do |t|
      t.belongs_to :order, index: true
      t.belongs_to :order_to_address, index: true
    end
  end
end
