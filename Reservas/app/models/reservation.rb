class Reservation < ActiveRecord::Base
  belongs_to :local
  belongs_to :payment
  has_many :reservationdetails
  
  validates :address, presence:true  
  
end
