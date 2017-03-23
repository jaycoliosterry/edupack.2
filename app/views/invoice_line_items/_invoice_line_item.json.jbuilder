json.extract! invoice_line_item, :id, :description, :price, :tax, :invoice_id, :created_at, :updated_at
json.url invoice_line_item_url(invoice_line_item, format: :json)
