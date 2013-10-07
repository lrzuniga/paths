json.array!(@types) do |type|
  json.extract! type, :type, :description
  json.url type_url(type, format: :json)
end
