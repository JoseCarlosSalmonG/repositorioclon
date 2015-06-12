class Reservation < ActiveRecord::Base
  belongs_to :customer
  belongs_to :local
  belongs_to :payment
end
