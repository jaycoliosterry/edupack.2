class CreateAddressGroups < ActiveRecord::Migration
  def change
    create_table :address_groups do |t|
      t.string :name
      t.string :description
      t.references :account, index: true

      t.timestamps
    end
  end
end
