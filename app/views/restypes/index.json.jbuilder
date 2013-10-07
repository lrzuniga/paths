json.array!(@restypes) do |restype|
  json.extract! restype, :restype, :description
  json.url restype_url(restype, format: :json)
end
