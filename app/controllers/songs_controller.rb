class SongsController < ApplicationController
  
  before_action :authenticate_user!

  def index
  	@songs = RSpotify::Track.search(params[:song_name])
  end

  def show
  	@song = RSpotify::Track.find(params[:id])
  end

  def upvote
    @song.upvote_from current_user
    redirect_to songs_path
  end

  def downvote
    @song.downvote_from current_user
    redirect_to songs_path
  end
  
end

