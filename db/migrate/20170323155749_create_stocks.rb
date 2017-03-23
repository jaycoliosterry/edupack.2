class CreateStocks < ActiveRecord::Migration
  def change
    create_table :stocks do |t|
      t.string :name
      t.text :description
      t.integer :stock_level
      t.string :storage_location
      t.decimal :weight
      t.decimal :width
      t.decimal :length
      t.decimal :depth
      t.references :stock_group, index: true
      t.references :account, index: true

      t.timestamps
    end
  end
end
