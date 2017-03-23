class Stock < ActiveRecord::Base
  belongs_to :stock_group
  belongs_to :account
end
