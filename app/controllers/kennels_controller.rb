class KennelsController < ApplicationController
  before_action :set_kennel, only: [:show, :edit, :update, :destroy]

  def index
    genuine_kennels = Kennel.where(city: params[:city])
    @kennels = []
    genuine_kennels.each do |kennel|
      if kennel.bookings.present?
        @kennels << kennel
      end
    end
  end

  def show
  end

  def new
  end

  def create
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
