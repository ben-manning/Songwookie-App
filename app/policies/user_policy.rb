class UserPolicy
	attr_reader :user, :favorites

	def initialize(user, favorites)
		@user = user
		@favorites = favorites
	end

	def show?
		user == user
	end

	# def update?
	# 	edit?
	# end

	# def destroy?
	# 	edit?
	# end
end