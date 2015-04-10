class CommentsController < ApplicationController

	def create
		@post = Post.find(params[:post_id])
		@comment = @post.comments.build(comment_params)
		@comment.user.id = current_user.id
	end

	private

	def comment_params
		params.require(:comment).permit(:body)
	end

end
