# For details on the DSL available within this file, see:
# https://guides.rubyonrails.org/routing.html

Rails.application.routes.draw do

	# This route maps the root path of the application to the appropriate
	# controller and action. This will effectively affect the home page of
	# the application.

	root "articles#index"


	# This route below is a *rule* which declares that "GET /articles"
	# requests are mapped to the "index" action of ArticlesController

	get "/articles", to: "articles#index"

	# This time, our root has something new: a route parameter (:id). A route
	# parameter captures a segment of the reques's path, and puts that value
	# into the params Hash, which is accessible by the controller action.
	#
	# For example, when handling a request like:
	# GET http://localhost:3000/articles/1,
	# 1 would be captured as the value for :id, which would then be accessible
	# as params[:id] in the show action of ArticlesController.

	get "/articles/:id", to: "articles#show"

end
