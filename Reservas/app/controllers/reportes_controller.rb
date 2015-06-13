class ReportesController < ApplicationController
  def index
    @reservation = Reservation.all
  end
end
