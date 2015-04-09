class Post < ActiveRecord::Base
	has_many :comments
	has_one :summary
	belongs_to :user
	belongs_to :topic

	default_scope { order('created_at DESC') }
end
