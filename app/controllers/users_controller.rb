class UsersController < ApplicationController
  def show
    @songs = Song.all
  end
end