class Local < ActiveRecord::Base
  belongs_to :city
<<<<<<< HEAD
  geocoded_by :address
  after_validation :geocode
=======
  validates :name, presence:true  
  validates :latitude, presence:true  
  validates :longitude, presence:true  
  validates :address, presence:true  
>>>>>>> 7da9753668fe920ee028d40d212a97af19c63a93
end
