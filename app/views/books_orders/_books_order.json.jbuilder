json.extract! books_order, :id, :book_id, :order_id, :created_at, :updated_at
json.url books_order_url(books_order, format: :json)
