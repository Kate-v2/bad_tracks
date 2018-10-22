
class sessionsController < ApplicationController

  def new
  end

  def create
    # user = User.find_by(username: params[:username])
    # Active Record gives us:
    user = User.find_by_username(params[:username])
  end


end
