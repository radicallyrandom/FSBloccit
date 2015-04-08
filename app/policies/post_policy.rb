class PostPolicy < ApplicationPolicy
	
	def index?
		true
	end

	class Scope 
		attr_reader :user, :scope

    	def initialize(user, scope)
    		@user = user
      		@scope = scope
    	end
	
		def resolve
			if user.present? && (user.admin? || user.moderator?)
				scope.all
			elsif user.present?
				scope.where(user: user)
			else
				# Look up handling associations on Model classes
				scope.none
			end
		end
	end

end