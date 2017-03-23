class Account < ActiveRecord::Base
  has_many :orders
  has_many :stock_groups
  has_many :stocks
  has_many :email_templates
  has_many :user_to_accounts
end
