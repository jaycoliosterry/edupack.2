class CreateEmailTemplates < ActiveRecord::Migration
  def change
    create_table :email_templates do |t|
      t.string :name
      t.string :reply_to_email
      t.string :subject
      t.text :body
      t.text :css
      t.references :account, index: true
      t.references :order, index: true

      t.timestamps
    end
  end
end
