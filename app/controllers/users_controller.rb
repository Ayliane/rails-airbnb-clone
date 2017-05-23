class UsersController < ApplicationController

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.new(user_params)

      if @user.save
        redirect_to kennels_path
      else
        render :new
      end
  end

  private

  def user_params
    params.require(:user).permit(:last_name, :first_name, :email, :photos)
  end
end
