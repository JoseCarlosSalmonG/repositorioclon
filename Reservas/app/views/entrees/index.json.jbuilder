json.array!(@entrees) do |entree|
  json.extract! entree, :id, :name, :price, :stock
  json.url entree_url(entree, format: :json)
end
