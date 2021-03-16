class ArticlesController < ApplicationController
  def index
  	@articles = Article.all # Fetch all articles from the database
  end

  def show
  	@article = Article.find(params[:id]) # Fetch a single article
  end
end
