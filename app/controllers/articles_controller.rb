class ArticlesController < ApplicationController
	def index
		@articles = Article.all
	end

	def new
		@article = Article.new
	end

	def create
		@article = Article.new(set_params)
		@article.save
		redirect_to articles_path
	end

	def destroy
		@article = Article.find(params[:id])
		@article.destroy
		redirect_to articles_path
	end


	private
	def set_params
		params.require(:article).permit(:body, :image, :price, :from_date, :to_date, :country, :region, :safety_info, :travel_item, :user_id)
	end
end
