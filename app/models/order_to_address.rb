class OrderToAddress < ActiveRecord::Base
  has_and_belongs_to_many :addresses
  has_and_belongs_to_many :orders
end
