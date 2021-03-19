class Article < ApplicationRecord
	has_many :comments # Declares that an article may be associated to many comments

	# 1st validation: declares that title field must be present (at least 1 non-white char)
	# 2nd validation: declares that body must be present, with length at minimum equal to 10

	validates :title, presence: true
	validates :body, presence: true, length: { minimum: 10 }
end
