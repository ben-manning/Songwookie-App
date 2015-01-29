class FavoritesController < ApplicationController
  before_action :authenticate_user!
  def new
		
  end

  def index
    #RSpotify.authenticate("<2d492c018da541dfab1478cb2655dcaf>", "<2f77d68b97024008977eaa13ab6711a4>")
    @songs = RSpotify::Track.search(params[:song_name])
    #@song = RSpotify::Track.find(params[:id])
    @song = Song.new
  end

  def create
      Song.where(song_params).first_or_create do |song|

     if @song.save 
         @favorite = Favorite.create(song_id: @song.id, user_id: current_user.id)
     end

  

    # if @song.save
    #   favorite = Favorite.create(song_id: @song.id, user_id: current_user.id)
    #   render json: favorite
    # else
    #   render json: @song.errors
    # end
   # @song = Song.new(params[:song])
   # @song.user = current_user
   # @song.save 
   # redirect_to user_path(current_user)
  end

  def destroy
  end

private
  def song_params
    params.require(:song).permit(:song_name, :artist_name, :album_art, :preview_url)
  end
end
end