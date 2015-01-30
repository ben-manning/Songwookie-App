class UsersController < ApplicationController
  def show
    @songs = current_user.songs
  end
end