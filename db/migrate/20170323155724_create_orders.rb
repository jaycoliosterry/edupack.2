class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.boolean :error
      t.string :description
      t.decimal :total_cost
      t.decimal :tax
      t.decimal :cost
      t.integer :type
      t.boolean :notify_me
      t.boolean :notify_receiver
      t.datetime :deliver_by
      t.boolean :batch
      t.string :status
      t.string :service
      t.references :account, index: true
      t.references :invoice, index: true
      t.references :user, index: true
      t.references :invoice_line_item, index: true

      t.timestamps
    end
  end
end
