json.extract! batch, :id, :name, :desc, :amount, :price, :farmer_id, :created_at, :updated_at
json.url batch_url(batch, format: :json)
