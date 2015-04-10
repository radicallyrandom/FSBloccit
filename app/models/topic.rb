class Topic < ActiveRecord::Base
	has_many :posts
	
	# Create a form partial for topics.
	# Update #topics#edit and topics#new to use the topics#form partial.
	# Use the form_group_tag helper method created in the checkpoint to display errors for invalid topics.

	validates :name, length: { minimum: 5 }

end
