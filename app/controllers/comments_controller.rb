class CommentsController < ApplicationController
	# We only want to allow authenticated users to delete comments
	http_basic_authenticate_with name: "dhh", password: "secret", only: :destroy

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

	def destroy
		@article = Article.find(params[:article_id])
		@comment = @article.comments.find(params[:id])

		@comment.destroy
		redirect_to article_path(@article)
	end

	private
		def comment_params
			params.require(:comment).permit(:commenter, :body, :status)
		end
end
