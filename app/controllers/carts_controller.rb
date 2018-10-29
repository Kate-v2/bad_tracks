class CartsController < ApplicationController

  def create
    song = Song.find(params[:song_id])
    flash[:notice] = "You have one copy of #{song.title}"
    redirect_to songs_path
  end

end
