class ReservationdetailsController < ApplicationController
  before_action :set_reservationdetail, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @reservationdetails = Reservationdetail.all
    respond_with(@reservationdetails)
  end

  def show
    respond_with(@reservationdetail)
  end

  def new
    @reservationdetail = Reservationdetail.new
    respond_with(@reservationdetail)
  end

  def edit
  end

  def create
    @reservationdetail = Reservationdetail.new(reservationdetail_params)
    @reservationdetail.save
    respond_with(@reservationdetail)
  end

  def update
    @reservationdetail.update(reservationdetail_params)
    respond_with(@reservationdetail)
  end

  def destroy
    @reservationdetail.destroy
    respond_with(@reservationdetail)
  end

  private
    def set_reservationdetail
      @reservationdetail = Reservationdetail.find(params[:id])
    end

    def reservationdetail_params
      params.require(:reservationdetail).permit(:quantityentree, :quantitycourse, :reservation_id, :entree_id, :course_id)
    end
end
