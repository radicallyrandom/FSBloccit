class User < ActiveRecord::Base
	# Include default devise modules. Others available are:
	# :confirmable, :lockable, :timeoutable and :omniauthable
	devise :database_authenticatable, :registerable, :confirmable,
    	:recoverable, :rememberable, :trackable, :validatable

	has_many :posts

	def admin?
		role == 'admin'
	end

	def moderator?
		role == 'moderator'
	end

end
