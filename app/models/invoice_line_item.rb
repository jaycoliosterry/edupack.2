class InvoiceLineItem < ActiveRecord::Base
  belongs_to :invoice
  has_one :order
end
