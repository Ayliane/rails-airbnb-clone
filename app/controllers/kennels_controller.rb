class KennelsController < ApplicationController
  before_action :set_kennl, only: [:show, :edit, :update, :destroy]

  def index
    # http://localhost:3000/kennels?city=Lyon&start_date=06-12-2017&end_date=06-18-2017
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
    params.require(:kennel).permit(:address, :description, :habits, :garden, :childs_around, :other_animal)
  end
end
