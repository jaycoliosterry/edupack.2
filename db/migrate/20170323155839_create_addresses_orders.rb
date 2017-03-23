class CreateAddressesOrders < ActiveRecord::Migration
  def change
    create_table :addresses_orders do |t|
      t.belongs_to :address, index: true
      t.belongs_to :order, index: true
    end
  end
end
