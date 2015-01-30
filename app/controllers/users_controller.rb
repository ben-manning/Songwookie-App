class UsersController < ApplicationController
  def show
    @favorites = current_user.favorites
  end
end
