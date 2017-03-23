class OrderPackItem < ActiveRecord::Base
  belongs_to :stock
  belongs_to :order
end
