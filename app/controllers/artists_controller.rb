class ArtistsController < ApplicationController
  def index
  	@artists = RSpotify::Artist.search(params[:artist_name])
  end

  def show
  	@artist = RSpotify::Artist.find(params[:id])
  end
end
