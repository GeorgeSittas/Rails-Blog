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

end
