json.extract! order, :id, :error, :description, :total_cost, :tax, :cost, :type, :notify_me, :notify_receiver, :deliver_by, :batch, :status, :service, :account_id, :invoice_id, :user_id, :invoice_line_item_id, :created_at, :updated_at
json.url order_url(order, format: :json)
