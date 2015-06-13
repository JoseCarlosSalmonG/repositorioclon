class Reservation < ActiveRecord::Base
  belongs_to :local
  belongs_to :payment
end
