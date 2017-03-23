class Order < ActiveRecord::Base
  belongs_to :account
  belongs_to :invoice
  belongs_to :user
  belongs_to :invoice_line_item
  has_and_belongs_to_many :addresses
  has_and_belongs_to_many :order_to_addresses
  has_many :order_pack_items
  has_many :order_packs
  has_one :order_attachment
  has_many :order_pack_packages
end
