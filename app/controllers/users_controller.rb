class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.new(user_params)

      if @user.save(user_params)
        redirect_to kennels_path
      else
        render :edit
      end
  end

  private

  def user_params
    params.require(:user).permit(:last_name, :first_name, :email, :photo, :password)
  end
end
