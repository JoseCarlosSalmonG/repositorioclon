class ReservationdetailsController < ApplicationController
  before_action :set_reservationdetail, only: [:show, :edit, :update, :destroy]
  before_action :set_reservation
  # GET /reservationdetails
  # GET /reservationdetails.json
  def index
    @reservationdetails = @reservation.reservationdetails
  end

  # GET /reservationdetails/1
  # GET /reservationdetails/1.json
  def show
  end

  # GET /reservationdetails/new
  def new
    @reservationdetail = @reservation.reservationdetails.new
  end

  # GET /reservationdetails/1/edit
  def edit
  end

  # POST /reservationdetails
  # POST /reservationdetails.json
  def create
    @reservationdetail = Reservationdetail.new(reservationdetail_params)

    respond_to do |format|
      if @reservationdetail.save
        format.html { redirect_to reservation_reservationdetail_url(@reservation, @reservationdetail), notice: 'Reservationdetail was successfully created.' }
        format.json { render :show, status: :created, location: @reservationdetail }
      else
        format.html { render :new }
        format.json { render json: @reservationdetail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reservationdetails/1
  # PATCH/PUT /reservationdetails/1.json
  def update
    respond_to do |format|
      if @reservationdetail.update(reservationdetail_params)
        format.html { redirect_to reservation_reservationdetail_url(@reservation, @reservationdetail), notice: 'Reservationdetail was successfully updated.' }
        format.json { render :show, status: :ok, location: @reservationdetail }
      else
        format.html { render :edit }
        format.json { render json: @reservationdetail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reservationdetails/1
  # DELETE /reservationdetails/1.json
  def destroy
    @reservationdetail.destroy
    respond_to do |format|
      format.html { redirect_to reservation_reservationdetails_url(@reservation), notice: 'Reservationdetail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reservationdetail
      @reservationdetail = Reservationdetail.find(params[:id])
    end
    def set_reservation
      @reservation = Reservation.find(params[:reservation_id])
    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def reservationdetail_params
      params.require(:reservationdetail).permit(:quantityentree, :quantitycourse, :reservation_id, :entree_id, :course_id)
    end
end
