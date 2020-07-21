class ChapterLikesController < ApplicationController
	before_action :authenticate_user!
	def like
		if ChapterLike.exists?(chapter_id: params[:chapter_id],user_id: params[:user_id])
			redirect_to root_path
		else
			ChapterLike.create(chapter_id: params[:chapter_id],user_id: params[:user_id])
			redirect_to root_path
		end
	end
end