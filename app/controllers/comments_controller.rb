class CommentsController < ApplicationController
	before_action :authenticate_user!
	def create
		post = Post.find(comment_params[:post_id])
		@comment = current_user.comments.create(comment_params)
		PostChannel.broadcast_to post, comment: @comment,user: current_user
	end

	private

	def comment_params
		params.require(:comment).permit(:content,:post_id)
	end
end