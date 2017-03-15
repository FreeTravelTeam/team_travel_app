class CommentsController < ApplicationController
	def create
		@comment = Comment.new
		@comment.body = params[:body]
		@comment.user_id = current_user.id
		@comment.article_id = 
		@comment.save
	end
end
