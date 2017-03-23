class CreateOrderPackItems < ActiveRecord::Migration
  def change
    create_table :order_pack_items do |t|
      t.integer :quantity
      t.references :stock, index: true
      t.references :order, index: true

      t.timestamps
    end
  end
end
