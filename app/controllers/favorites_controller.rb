class FavoritesController < ApplicationController
	def new
		
	end

	def index
       @songs = RSpotify::Track.search(params[:song_name])
		#@song = RSpotify::Track.find(params[:id])
	end

	def create
	   redirect_to user_path(current_user)
	end

	def destroy
	end
end