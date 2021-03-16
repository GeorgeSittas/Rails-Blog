class ArticlesController < ApplicationController
  def index
  	@articles = Article.all # Fetch all articles from the database
  end

  def show
  	@article = Article.find(params[:id]) # Fetch a single article
  end

  def new
  	# Instantiates a new article, without saving it. This will be used
  	# in the view when building the form for article creation.

  	@article = Article.new
  end

  def create
  	# Instantiates a new article with values for the title and body, which
  	# is to be saved into the database.

  	@article = Article.new(article_params)

  	if @article.save
  		redirect_to @article # redirect_to forces browser to make a new request
  	else
  		render :new # Renders the specified view for the current request
  	end
  end

  def edit
  	# Fetches the to-be-edited article from the DB and stores it in @article,
  	# so that it can be used when building the form.

  	@article = Article.find(params[:id])
  end

  def update
  	# Fetches the to-be-updated article from the DB and attempts to update it
  	# with the (filtered) submitted data

  	@article = Article.find(params[:id])

  	if @article.update(article_params)
  		redirect_to @article
  	else
  		render :edit
  	end
  end

  private
  	def article_params
  		# Filters params in order to protect the app against malicious input
  		params.require(:article).permit(:title, :body)
  	end

end
