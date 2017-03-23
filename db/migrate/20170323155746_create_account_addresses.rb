class CreateAccountAddresses < ActiveRecord::Migration
  def change
    create_table :account_addresses do |t|
      t.string :address1
      t.string :address2
      t.string :address3
      t.string :address4
      t.string :country
      t.string :postcode
      t.string :name
      t.string :email
      t.string :telephone
      t.references :account, index: true

      t.timestamps
    end
  end
end
