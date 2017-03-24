class UsersController < ApplicationController
 
 def show
  @user = User.find(params[:id])
  @artcles = @user.articles
 end
 
 def like
  @like = Like.where(user_id: current_user.id)
 end
 
end
