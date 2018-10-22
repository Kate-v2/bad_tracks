
class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    # @user = User.create(user_params)
    @user = User.new(user_params)
    @user.save ? redirect_to user_path(@user) : render :new
  end

  def show
    @user = User.find(params[:id])
  end


  private

  def user_params
    params.require(:user).permit(:username, :password)
  end




end
