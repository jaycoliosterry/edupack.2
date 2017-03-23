class OrderPackPackage < ActiveRecord::Base
  belongs_to :order
  belongs_to :order_pack
  has_and_belongs_to_many :addresses
end
