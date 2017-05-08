json.extract! recharge, :id, :user_id, :operator_id, :amount, :created_at, :updated_at
json.url recharge_url(recharge, format: :json)
