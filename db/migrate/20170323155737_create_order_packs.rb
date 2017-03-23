class CreateOrderPacks < ActiveRecord::Migration
  def change
    create_table :order_packs do |t|
      t.decimal :weight
      t.decimal :width
      t.decimal :length
      t.decimal :depth
      t.string :customs
      t.text :customs_detail
      t.string :description
      t.integer :quantity
      t.decimal :customs_value
      t.decimal :cost
      t.references :order, index: true

      t.timestamps
    end
  end
end
