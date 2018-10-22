
class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    # @user = User.create(user_params)
    @user = User.new(user_params)
    redirect_to user_path(@user) if @user.save
  end

  def show

  end


  private

  def user_params
    params.require(:user).permit(:username, :password)

  end




end
