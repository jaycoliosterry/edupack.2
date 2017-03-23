class Invoice < ActiveRecord::Base
  belongs_to :account
  has_many :invoice_line_items
  has_one :order
end
