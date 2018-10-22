
class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    # @user = User.create(user_params)
    @user = User.new(user_params)
    if @user.save
      redirect_to user_path(@user)
    else
      # "Sad Path" -- we shouldn't have this because we don't test it
      render :new
    end
  end

  def show

  end


  private

  def user_params
    params.require(:user).permit(:username, :password)

  end




end
