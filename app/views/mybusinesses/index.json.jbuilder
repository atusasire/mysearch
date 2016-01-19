json.array!(@mybusinesses) do |mybusiness|
  json.extract! mybusiness, :id, :name, :type, :category, :district, :village, :contact, :description
  json.url mybusiness_url(mybusiness, format: :json)
end
