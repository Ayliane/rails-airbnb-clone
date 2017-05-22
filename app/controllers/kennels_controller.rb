class KennelsController < ApplicationController
  def index
    @kennels = Kennel.all
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
