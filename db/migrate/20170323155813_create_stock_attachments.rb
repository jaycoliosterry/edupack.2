class CreateStockAttachments < ActiveRecord::Migration
  def change
    create_table :stock_attachments do |t|
      t.references :stock, index: true
      t.string :url

      t.timestamps
    end
  end
end
