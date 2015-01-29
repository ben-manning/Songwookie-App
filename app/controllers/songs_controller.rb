class SongsController < ApplicationController

  def index
  	@trending = Song.all.sample(4)
  end

  # def show
  # 	@song = RSpotify::Track.find(params[:id])
  # end
end

