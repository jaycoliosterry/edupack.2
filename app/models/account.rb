class Account < ActiveRecord::Base
  has_many :orders
  has_many :stock_groups
end
