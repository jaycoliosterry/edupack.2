json.extract! order_pack_item, :id, :quantity, :stock_id, :order_id, :created_at, :updated_at
json.url order_pack_item_url(order_pack_item, format: :json)
