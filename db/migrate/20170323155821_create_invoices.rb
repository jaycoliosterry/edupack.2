class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.text :order_refs
      t.decimal :total_cost
      t.string :invoice_number
      t.datetime :date_issued
      t.datetime :date_due
      t.string :status
      t.decimal :tax
      t.boolean :sent
      t.boolean :manual
      t.string :purchase_order_number
      t.text :comment
      t.string :type
      t.references :account, index: true

      t.timestamps
    end
  end
end
