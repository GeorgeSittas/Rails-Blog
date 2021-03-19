class CommentsController < ApplicationController
	def create
		# Slightly more complicated than the ArticlesController, since we have
		# to track the corresponding article that each comment is attached to.

		# Fetches the article in question
		@article = Article.find(params[:article_id])

		# Creates and saves a comment. Automatically links it so that it belongs
		# to the particular article.
		@comment = @article.comments.create(comment_params)

		redirect_to article_path(@article)
	end

	private
		def comment_params
			params.require(:comment).permit(:commenter, :body)
		end
end
