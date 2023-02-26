json.extract! crypto_price, :id, :price, :captured_at, :cryptocurrency_id, :created_at, :updated_at
json.url crypto_price_url(crypto_price, format: :json)
