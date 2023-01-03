class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @tickets = params[:tickets].to_i
    @tickets.times { @booking.passengers.build }
    @flight = Flight.find(params[:flight])
  end

  def create
    @booking = Booking.new(booking_param)
    if @booking.save
      redirect_to @booking
    else
      redirect_to root_path
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  private
    def booking_param
      params.require(:booking).permit(:flight_id, passengers_attributes: [:name, :email])
    end
end
