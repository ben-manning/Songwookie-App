class SongsController < ApplicationController
  
  before_action :authenticate_user!
  before_action :set_song, only: [:show, :edit, :update, :destroy, :upvote]

  def index
  	# @songs = RSpotify::Track.search(params[:song_name])
    @trending = Song.all.sample(4)
    @songs = Song.all.order(:cached_votes_up => :desc)
  end

  # def show
  # 	@song = RSpotify::Track.find(params[:id])
  # end

  def upvote
    @song = Song.find params[:id]
    @song_vote = @song.upvote_from current_user
    redirect_to songs_path
  end

  private
    def set_song
      @song = Song.find(params[:id])
    end

  #   def song_params
  #     params.require(:song).permit(:song_name, :artist_name, :album_art)
  #   end

end
