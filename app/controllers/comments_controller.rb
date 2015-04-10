class CommentsController < ApplicationController

	def create
		@topic = Topic.find_by(params[:topic_id])
		@post = Post.find_by(params[:post_id])
		@comment = current_user.comments.build(comment_params)
		@comment.post = @post

		if @comment.save
			flash[:notice] = "Comment was saved"	
		else
			flash[:error] = "Comment Failed to save. Please try again"
		end
	end

	private

	def comment_params
		params.require(:comment).permit(:body)
	end

end
