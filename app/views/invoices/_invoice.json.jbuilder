json.extract! invoice, :id, :order_refs, :total_cost, :invoice_number, :date_issued, :date_due, :status, :tax, :sent, :manual, :purchase_order_number, :comment, :type, :account_id, :created_at, :updated_at
json.url invoice_url(invoice, format: :json)
