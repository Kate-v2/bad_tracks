class CartsController < ApplicationController

  def create
    song = Song.find(params[:song_id])

    song_id_str = song.id.to_s

    session[:cart] ||= Hash.new(0)       # zero is there but upon using, it's a STRING / this is for readability
    session[:cart][song_id_str] ||= 0   # so because it's a string 0, we just reset it to 0 as a int for working with below
    # session[:cart][song_id_str].to_i   <--- can I do this?
    session[:cart][song_id_str] = session[:cart][song_id_str] + 1

    quantity = session[:cart][song_id_str]
    flash[:notice] = "You have #{pluralize(quantity, "copy")} copy of #{song.title}"
    redirect_to songs_path
  end

end
