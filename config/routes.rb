# For details on the DSL available within this file, see:
# https://guides.rubyonrails.org/routing.html

Rails.application.routes.draw do

	# This route below is a *rule* which declares that "GET /articles"
	# requests are mapped to the "index" action of ArticlesController

	get "/articles", to: "articles#index"

end
