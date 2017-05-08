json.extract! transaction, :id, :user_id, :user_email, :amount, :created_at, :updated_at
json.url transaction_url(transaction, format: :json)
