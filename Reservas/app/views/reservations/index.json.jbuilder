json.array!(@reservations) do |reservation|
  json.extract! reservation, :id, :date, :address, :local_id, :payment_id
  json.url reservation_url(reservation, format: :json)
end
