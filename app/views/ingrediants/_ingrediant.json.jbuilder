json.extract! ingrediant, :id, :name, :price, :created_at, :updated_at
json.url ingrediant_url(ingrediant, format: :json)
