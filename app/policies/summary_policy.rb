class SummaryPolicy < ApplicationPolicy

	def index?
		false
	end

	def create?
		user.present? && user.admin?
	end

	def update?
		create?
	end

end
