class SongsController < ApplicationController
	before_action :authenticate_user!
  def index
  	@songs = RSpotify::Track.search(params[:song_name])
  end

  def show
  	@song = RSpotify::Track.find(params[:id])
  end
end

