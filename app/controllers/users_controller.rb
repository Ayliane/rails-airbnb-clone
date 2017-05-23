class UsersController < ApplicationController

  private

  def product_params
    params.require(:user).permit(photos: [])
  end

end
