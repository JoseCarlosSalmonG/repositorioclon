json.array!(@customers) do |customer|
  json.extract! customer, :id, :name, :surnames, :DNI, :phone, :birth, :user_id
  json.url customer_url(customer, format: :json)
end
