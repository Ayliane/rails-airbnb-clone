class KennelsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_kennel, only: [:show, :edit, :update, :destroy]

  def index
    session[:start_date] = params[:start_date]
    session[:end_date] = params[:end_date]
    genuine_kennels = Kennel.where("city iLike ?", params[:city])
    @kennels = []
    genuine_kennels.each do |kennel|
      if kennel.bookings.blank?
        @kennels << kennel
      end
    end
  end

  def show
    @kennel = Kennel.find(params[:id])
    # @alert_message = "You are viewing #{@kennel.address}"
    @kennel_coordinates = { lat: @kennel.latitude, lng: @kennel.longitude }
  end

  def new
    @kennel = Kennel.new()
  end

  def create
    @kennel = Kennel.new(kennels_params)
    @kennel.user = current_user

    if @kennel.save
      redirect_to kennel_path(@kennel)
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @kennel.destroy
    redirect_to kennels_path
  end

  private

  def set_kennel
    @kennel = Kennel.find(params[:id])
  end

  def kennels_params
    params.require(:kennel).permit(:address, :description, :city, :habits, :garden, :childs_around, :other_animal, :photo)
  end
end
