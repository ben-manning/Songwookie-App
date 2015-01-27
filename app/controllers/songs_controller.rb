class SongsController < ApplicationController

  def index
  	@songs = RSpotify::Track.search(params[:song_name])
  end

  def show
  	@song = RSpotify::Track.find(params[:id])
  end
end

