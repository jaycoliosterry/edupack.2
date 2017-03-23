class CreateZones < ActiveRecord::Migration
  def change
    create_table :zones do |t|
      t.string :country
      t.integer :zone
      t.string :expresstime
      t.string :economytime
      t.boolean :iva

      t.timestamps
    end
  end
end
