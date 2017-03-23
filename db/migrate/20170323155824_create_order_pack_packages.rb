class CreateOrderPackPackages < ActiveRecord::Migration
  def change
    create_table :order_pack_packages do |t|
      t.string :origin
      t.string :destination
      t.string :status
      t.text :history
      t.string :waybill
      t.integer :total_pieces
      t.integer :piece
      t.references :order, index: true
      t.references :order_pack, index: true

      t.timestamps
    end
  end
end
