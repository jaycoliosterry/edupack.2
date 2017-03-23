class CreateUserToAccounts < ActiveRecord::Migration
  def change
    create_table :user_to_accounts do |t|
      t.references :account, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
