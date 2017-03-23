class OrderPack < ActiveRecord::Base
  belongs_to :order
  has_many :order_pack_packages
end
