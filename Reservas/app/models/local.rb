class Local < ActiveRecord::Base
  belongs_to :city
  geocoded_by :address
  after_validation :geocode
end
