json.array!(@reservationdetails) do |reservationdetail|
  json.extract! reservationdetail, :id, :quantityentree, :quantitycourse, :reservation_id, :entree_id, :course_id
  json.url reservationdetail_url(reservationdetail, format: :json)
end
