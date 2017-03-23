class CreateAddressesOrderToAddresses < ActiveRecord::Migration
  def change
    create_table :addresses_order_to_addresses do |t|
      t.belongs_to :address, index: true
      t.belongs_to :order_to_address, index: true
    end
  end
end
