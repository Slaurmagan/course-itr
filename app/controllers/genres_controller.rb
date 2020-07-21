class GenresController < ApplicationController
	def search
		@genres = Genre.where('title LIKE ?','%' + params[:q] + '%')
		html = render_to_string(partial: 'autocomplete_results',locals: { genres: @genres})
		render json: { html: html } 
	end
end