class KennelsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_kennel, only: [:show, :edit, :update, :destroy]

  def index
    session[:start_date] = params[:start_date]
    session[:end_date] = params[:end_date]

    genuine_kennels = Kennel.near(params[:city], 10).where.not(latitude: nil, longitude: nil)
    # Latitude : 45.7484600°
    # Longitude : 4.8467100°
    # where("city iLike ?", params[:city])
    @kennels = []

    genuine_kennels.each do |kennel|
      if kennel.bookings.blank?
        @kennels << kennel
      end
    end

    @hash = Gmaps4rails.build_markers(@kennels) do |kennel, marker|
      marker.lat kennel.latitude
      marker.lng kennel.longitude
      # marker.infowindow render_to_string(partial: "/kennels/map_box", locals: { kennel: kennel })
    end
  end

  def show
    @kennel = Kennel.find(params[:id])
    # @kennel_coordinates = { lat: @kennel.latitude, lng: @kennel.longitude }
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
    params.require(:kennel).permit(:address, :baseline, :description, :city, :habits, :garden, :childs_around, :other_animal, :photo)
  end
end
