class Reservationdetail < ActiveRecord::Base
  belongs_to :reservation
  belongs_to :entree
  belongs_to :course
end
