class ArticlesController < ApplicationController
  def index
  	@articles = Article.all
  end

  def new
  	@article = Article.new
  end

  def create
  	@article = Article.create!(article_params)
  	respond_to do |format|
  	  format.html { redirect_to articles_path }
  	  format.js
  	end
  end

  private
    def article_params
      params.require(:article).permit(:title,:description)
    end

end
