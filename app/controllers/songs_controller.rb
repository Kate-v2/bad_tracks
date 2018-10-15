# File name needs to be plural
# CONTROLLERS are ALWAYS PLURAL

# NOTE Not ApplicationRecord or ActiveRecord
class SongsController < ApplicationController

  # Index in the routes folder actually refers to this method
  def index
    @songs = Song.all
  end

  def new
    @artist = Artist.find(params[:artist_id])
    @song   = Song.new
  end

  def create

  end


  private

  def verify_params
    params.require(:song).permit(:title, :length, :)
  end

end
