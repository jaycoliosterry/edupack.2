class Stock < ActiveRecord::Base
  belongs_to :stock_group
  belongs_to :account
  has_many :order_pack_items
end
