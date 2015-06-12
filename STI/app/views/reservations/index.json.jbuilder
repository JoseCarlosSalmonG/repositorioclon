json.array!(@reservations) do |reservation|
  json.extract! reservation, :id, :date, :address, :customer_id, :local_id, :payment_id
  json.url reservation_url(reservation, format: :json)
end
