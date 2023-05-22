json.extract! order, :id, :date_submitted, :customer_id, :status, :subtotal, :shipping, :tax, :total, :created_at, :updated_at
json.url order_url(order, format: :json)
