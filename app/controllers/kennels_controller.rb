class KennelsController < ApplicationController
  before_action :set_kennel, only: [:show, :edit, :update, :destroy]

  def index
    genuine_kennels = Kennel.where(city: params[:city])
    @kennels = []
    genuine_kennels.each do |kennel|
      if kennel.bookings.blank?
        @kennels << kennel
      end
    end
  end

  def show
  end

  def new
    @kennel = Kennel.new()
  end

  def create
    @kennel = Kennel.new(kennels_params)
    @kennel.user = current_user

    if @kennel.save
      redirect_to kennels_path
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_kennel
    @kennel = Kennel.find(params[:id])
  end

  def kennels_params
    params.require(:kennel).permit(:address, :description, :city, :habits, :garden, :childs_around, :other_animal)
  end
end
