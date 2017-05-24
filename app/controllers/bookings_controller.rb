class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    session[:message] = params[:message]
    binding.pry
    @kennel = Kennel.find(params[:kennel_id])
    @booking = Booking.new
  end

  def create
    binding.pry
    @kennel = Kennel.find(params[:kennel_id])
    @user = current_user
    @booking = Booking.new(booking_params)
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
    params.require(:booking).permit(:start_date, :end_date, :confirmation_status, :message)
  end
end
