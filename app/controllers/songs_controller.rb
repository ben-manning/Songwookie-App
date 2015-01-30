
class SongsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_song, only: [:upvote]

  def index
    @trending = Song.all.sample(4)
    @songs = Song.all.order(cached_votes_up: :desc)
  end

  def upvote
    @song_vote = @song.upvote_from current_user
    redirect_to songs_path
  end

private
  def set_song
    @song = Song.find(params[:id])
  end
end
