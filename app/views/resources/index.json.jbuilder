json.array!(@resources) do |resource|
  json.extract! resource, :name, :provider, :link, :duration.
  json.url resource_url(resource, format: :json)
end
