class FavoritePolicy
	attr_reader :user, :favorites

	def initialize(user, favorites)
		@user = user
		@favorites = favorites
	end

	def new?
		user == user
	end

	def create?
		user == user
	end


	# def update?
	# 	edit?
	# end

	def destroy?
		favorites.user == user
	end
end