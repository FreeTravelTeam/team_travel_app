class ArticlesController < ApplicationController
    
    before_action :set_article, only: [:destroy, :show, :edit, :update]

	def top
	end

	def index
		@articles = Article.all.order("id DESC")
		@search = Article.ransack(params[:q])
		@articles = @search.result(distinct: true)
		@articles = Article.page(params[:page]).per(6)
	end

	def new
		@article = Article.new
	end

	def create
		@article = Article.new(set_params)
		@article.user_id = current_user.id
		if  
			@article.save then
			redirect_to articles_path
		else
			re = ''
			@article.errors.messages.each do |key, vals|
				vals.each do |val|
					re += '<span style="color:red">' + key.to_s + '</span>' + val
				end
			end
			@msg = re.html_safe
			render 'articles/new'
		end
	end

	def destroy
		@article.destroy
		redirect_to articles_path
	end
    
    def show
    	user_id = @article.user_id
    	@user = User.find(user_id)
    	# @cmments = Comment.find(params[:id])
    end

    def edit
    	
    end

    def update
    	if  
			@article.update(set_params) then
			redirect_to articles_path
		else
			re = ''
			@article.errors.messages.each do |key, vals|
				vals.each do |val|
					re += '<span style="color:red">' + key.to_s + '</span>' + val
				end
			end
			@msg = re.html_safe
			render 'articles/edit'
		end
    end

	private
	def set_article
		@article = Article.find(params[:id])
		
	end
	def set_params
		params.require(:article).permit(:body, :image, :price, :from_date, :to_date, :country, :region, :safety_info, :travel_item, :user_id, :title)
	end
end
