class CreateOrderToAddresses < ActiveRecord::Migration
  def change
    create_table :order_to_addresses do |t|

      t.timestamps
    end
  end
end
