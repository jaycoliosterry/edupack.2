class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :company_name
      t.string :contact_name
      t.string :job_title
      t.string :department
      t.string :telephone
      t.string :fax
      t.string :email
      t.string :street1
      t.string :street2
      t.string :city
      t.string :state
      t.string :country
      t.string :zip
      t.references :address_group, index: true

      t.timestamps
    end
  end
end
