class CreateAddressesOrderPackPackages < ActiveRecord::Migration
  def change
    create_table :addresses_order_pack_packages do |t|
      t.belongs_to :address, index: true
      t.belongs_to :order_pack_package, index: true
    end
  end
end
