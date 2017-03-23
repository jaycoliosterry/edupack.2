class CreateInvoiceLineItems < ActiveRecord::Migration
  def change
    create_table :invoice_line_items do |t|
      t.text :description
      t.decimal :price
      t.decimal :tax
      t.references :invoice, index: true

      t.timestamps
    end
  end
end
