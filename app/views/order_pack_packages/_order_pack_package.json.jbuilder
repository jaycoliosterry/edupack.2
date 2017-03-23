json.extract! order_pack_package, :id, :origin, :destination, :status, :history, :waybill, :total_pieces, :piece, :order_id, :order_pack_id, :created_at, :updated_at
json.url order_pack_package_url(order_pack_package, format: :json)
