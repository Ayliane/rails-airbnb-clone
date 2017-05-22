class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :confirmation_status)
  end
end
