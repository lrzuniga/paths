json.array!(@levels) do |level|
  json.extract! level, :level, :description
  json.url level_url(level, format: :json)
end
