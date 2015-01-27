class FavoritesController < ApplicationController
	def new
		@songs = RSpotify::Track.search(params[:song_name])
		@song = RSpotify::Track.find(params[:id])
	end

	def create
	end

	def destroy
	end
end