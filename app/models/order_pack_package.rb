class OrderPackPackage < ActiveRecord::Base
  belongs_to :order
  belongs_to :order_pack
end
