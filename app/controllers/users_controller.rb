class UsersController < ApplicationController
 
 def show
  @user = User.find(params[:id])
  @artcles = @user.articles
  # userモデルからとってきたidを＠userに入れてそのidと関連付けたarticleのインスタンスをもってきてあげて@articleに入れる
 end
 
end
