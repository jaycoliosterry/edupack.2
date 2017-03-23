json.extract! account, :id, :name, :phone, :website, :finance_contact_name, :finance_contact_email, :description, :pays_tax, :pricing_tier, :created_at, :updated_at
json.url account_url(account, format: :json)
