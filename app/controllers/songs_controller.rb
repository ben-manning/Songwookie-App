class SongsController < ApplicationController
	def index
		@trending_songs = Songs.order('RAND()').limit(20)
		render 'index'
	end
end