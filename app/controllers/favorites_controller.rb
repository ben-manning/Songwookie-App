class FavoritesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_favorite, only: :destroy

  def new
  end

  def index
    @songs = RSpotify::Track.search(params[:song_name])
    @song = Song.new
  end

  def create
    @song = Song.where(song_params).first_or_initialize

    if @song.save
      @favorite = Favorite.create(song_id: @song.id, user_id: current_user.id)
    end
  end

  def destroy
    @favorite.destroy
    redirect_to current_user
  end

private
  def song_params
    params.require(:song).permit(:song_name, :artist_name, :album_art, :preview_url)
  end

  def set_song
    @favorite = Favorite.find(params[:id])
  end
end
