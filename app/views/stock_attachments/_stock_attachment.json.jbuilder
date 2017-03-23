json.extract! stock_attachment, :id, :stock_id, :url, :created_at, :updated_at
json.url stock_attachment_url(stock_attachment, format: :json)
