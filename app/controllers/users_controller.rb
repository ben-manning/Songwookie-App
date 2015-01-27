class UsersController < ApplicationController

	before_action :authenticate_user!

	def index
		authorize @user
	end
end