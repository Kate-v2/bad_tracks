
class ArtistsController < ApplicationController

  def new
    @artist = Artist.new
  end


  def create
    @artist = Artist.create( artist_params )
    redirect_to "/artists/#{@artist.id}"
  end

  def show
    @artist = Artist.find(params[:id])
  end

  private

  # this improves security, by only allowing what we expect to pass
  def artist_params
    # this is nested in our form via "artist[name]"
    params.require(:artist).permit(:name)
  end

end
