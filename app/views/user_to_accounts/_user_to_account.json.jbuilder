json.extract! user_to_account, :id, :account_id, :user_id, :created_at, :updated_at
json.url user_to_account_url(user_to_account, format: :json)
