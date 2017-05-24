class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @kennel = Kennel.find(params[:kennel_id])
    @booking = Booking.new
  end

  def create
    @kennel = Kennel.find(params[:kennel_id])
    @user = current_user
    @booking = Booking.new(booking_params)
    # @booking.start_date = session[:start_date]
    # @booking.end_date = session[:end_date]
    @booking.kennel = @kennel
    @booking.user = @user
    if @booking.save
      redirect_to @booking
    else
      render :new
    end
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
