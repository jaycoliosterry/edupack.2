class CreateExpressPrices < ActiveRecord::Migration
  def change
    create_table :express_prices do |t|
      t.decimal :weight
      t.decimal :zone1
      t.decimal :zone2
      t.decimal :zone3
      t.decimal :zone4
      t.decimal :zone5
      t.decimal :zone6
      t.decimal :zone7
      t.decimal :zone8
      t.decimal :zone9
      t.decimal :zone10
      t.decimal :zone11
      t.decimal :zone12
      t.decimal :zone13

      t.timestamps
    end
  end
end
