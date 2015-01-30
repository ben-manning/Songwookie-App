class FavoritePolicy
	attr_reader :user, :favorite

	def initialize(user, favorite)
		raise Pundit::NotAuthorizedError, "must be logged in" unless user
		@user = user
		@favorite = favorite
	end

	def show?
		favorite.user_id == user.id
	end


	def update?
		favorite.user_id == user.id
	end

	def destroy?
		favorite.user_id == user.id
	end

	def new?
		favorite.user_id == user.id
	end
end