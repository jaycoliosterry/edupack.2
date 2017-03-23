class Account < ActiveRecord::Base
  has_many :orders
  has_many :stock_groups
  has_many :stocks
end
