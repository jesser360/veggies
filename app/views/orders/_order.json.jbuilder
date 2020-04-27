json.extract! order, :id, :quantity, :total_price, :customer_id, :batch_id, :created_at, :updated_at
json.url order_url(order, format: :json)
