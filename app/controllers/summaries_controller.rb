class SummariesController < ApplicationController

	def new
		@post = Post.find(params[:post_id])
		@summary = Summary.new
		authorize @summary
	end

	def create
		@post = Post.find(params[:post_id])
		@summary = Summary.new(params.require(:summary).permit(:description))
		@summary.post = @post

		authorize @summary

		if @summary.save
			flash[:notice] = "Summary was saved"
			redirect_to [@post, @summary]
		else
			flash[:error] = "There was an error saving the post. Please try again."
      		render :new
		end
	end

	def show
  		@summary = Summary.find(params[:id])
    	@post = Post.find(params[:post_id])
  	end

end
