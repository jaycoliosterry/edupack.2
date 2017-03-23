class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :name
      t.string :phone
      t.string :website
      t.string :finance_contact_name
      t.string :finance_contact_email
      t.string :description
      t.boolean :pays_tax
      t.string :pricing_tier

      t.timestamps
    end
  end
end
