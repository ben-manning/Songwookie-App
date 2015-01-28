class FavoritesController < ApplicationController
	def new
		
	end

	def index
	    #RSpotify.authenticate("<2d492c018da541dfab1478cb2655dcaf>", "<2f77d68b97024008977eaa13ab6711a4>")
       @songs = RSpotify::Track.search(params[:song_name])
		#@song = RSpotify::Track.find(params[:id])
	end

	def create
	   redirect_to user_path(current_user)
	end

	def destroy
	end
end