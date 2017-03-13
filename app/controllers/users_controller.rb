class UsersController < ApplicationController
 
 def show
  @user = User.find(params[:id])
  @artcles = @user.articles
 end
 
 def likes
  @user = User.find(params[:id])
 end
 
end
