json.extract! email_template, :id, :name, :reply_to_email, :subject, :body, :css, :account_id, :order_id, :created_at, :updated_at
json.url email_template_url(email_template, format: :json)
