class Order < ActiveRecord::Base
  belongs_to :account
  belongs_to :invoice
  belongs_to :user
  belongs_to :invoice_line_item
end
