json.array!(@courses) do |course|
  json.extract! course, :title, :description
  json.url course_url(course, format: :json)
end
