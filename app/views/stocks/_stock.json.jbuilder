json.extract! stock, :id, :name, :description, :stock_level, :storage_location, :weight, :width, :length, :depth, :stock_group_id, :account_id, :created_at, :updated_at
json.url stock_url(stock, format: :json)
