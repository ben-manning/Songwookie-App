class FavoritesController < ApplicationController

	before_action :authenticate_user!

	respond_to :html

	def new
		authorize@favorite
	end

	def create
		authorize@favorite
	end

	def destroy
		authorize@favorite
	end



	private
    def set_favorite
      @favorite_song = Song.find(params[:id])
    end

    def recipe_params
      params.require(:song).permit(:song_name, :preview_url)
    end

end