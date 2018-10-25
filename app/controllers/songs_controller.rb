# File name needs to be plural
# CONTROLLERS are ALWAYS PLURAL

# NOTE Not ApplicationRecord or ActiveRecord
class SongsController < ApplicationController

  # Index in the routes folder actually refers to this method
  def index
    @songs = Song.all
    assess_cart
    redirect_to songs_path
  end

  def new
    @artist = Artist.find( params[:artist_id] )
    @song   = Song.new
  end

  def create
    artist = Artist.find( params[:artist_id] )
    song   = artist.songs.create(song_params)
    redirect_to artist_path( artist )
  end


  private

  def song_params
    params.require(:song).permit(:title, :length, :play_count)
  end


end
