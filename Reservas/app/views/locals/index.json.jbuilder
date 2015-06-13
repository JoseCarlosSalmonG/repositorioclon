json.array!(@locals) do |local|
  json.extract! local, :id, :name, :latitude, :longitude, :address, :city_id
  json.url local_url(local, format: :json)
end
