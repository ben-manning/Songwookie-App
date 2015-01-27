class FavoritesController < ApplicationController

	before_action :authenticate_user!

	def new
		authorize@favorite
	end

	def create
		authorize@favorite
	end

	def destroy
		authorize@favorite
	end
end