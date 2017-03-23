class StockGroup < ActiveRecord::Base
  belongs_to :account
  has_many :stocks
end
