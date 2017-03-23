class CreateOrderAttachments < ActiveRecord::Migration
  def change
    create_table :order_attachments do |t|
      t.references :order, index: true
      t.string :url

      t.timestamps
    end
  end
end
