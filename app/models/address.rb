class Address < ActiveRecord::Base
  belongs_to :address_group
  has_and_belongs_to_many :orders
  has_and_belongs_to_many :order_to_addresses
end
