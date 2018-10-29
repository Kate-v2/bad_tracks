class CartsController < ApplicationController
  # this gives you access to view helpers in these files --- Try to put this in your tests to handle the to currency
  include ActionView::Helpers::TextHelper


  def create
    song = Song.find(params[:song_id])

    @cart.add_song(song.id)
    session[:cart] = @cart.contents
    quantity = @cart.count_of(song.id)

    flash[:notice] = "You have #{pluralize(quantity, "copy")} copy of #{song.title}"
    redirect_to songs_path
  end

end
