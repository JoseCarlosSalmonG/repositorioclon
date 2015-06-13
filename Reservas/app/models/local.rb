class Local < ActiveRecord::Base
  belongs_to :city
  geocoded_by :address
  after_validation :geocode
  validates :name, presence:true  
  validates :latitude, presence:true  
  validates :longitude, presence:true  
  validates :address, presence:true  
end
