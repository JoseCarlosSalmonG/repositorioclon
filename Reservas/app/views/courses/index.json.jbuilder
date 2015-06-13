json.array!(@courses) do |course|
  json.extract! course, :id, :name, :price, :stock
  json.url course_url(course, format: :json)
end
