class UsersController < ApplicationController
	def show
		@article = Article.where(params[:user_id])
	end
end
