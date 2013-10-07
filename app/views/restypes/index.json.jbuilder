json.array!(@restypes) do |restype|
  json.extract! restype, :type, :description
  json.url restype_url(restype, format: :json)
end
