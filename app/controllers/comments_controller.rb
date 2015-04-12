class CommentsController < ApplicationController

  # POST /topics/:topic_id/posts/:post_id/comments
  def create
  	@topic = Topic.find_by(params[:topic_id])
  	@post = @topic.posts.find(params[:post_id])

  	# The declaring class of a has_many relationship
  	# should call build when initializing the association
  	@comment = @post.comments.new(comment_params)

  	@comment.user_id = current_user.id 

  	if @comment.save
  		redirect_to [@topic, @post], :notice 'Comment was saved!'
  	else
  		redirect_to [@topic, @post], alert: 'Something went wrong. Try again.'
  	end
  end

  private

  def comment_params
    params.require(:comment).permit(:body)
  end

end
