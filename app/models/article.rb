class Article < ApplicationRecord
	include Visible # Module which provides visibility functionality for an article

	# Declares that an article may be associated to many comments.
	# dependent: :destroy means that upon article deletion, all its comments
	# will also be deleted, so that they won't take up space in the database.
	has_many :comments, dependent: :destroy

	# 1st validation: declares that title field must be present (at least 1 non-white char)
	# 2nd validation: declares that body must be present, with length at minimum equal to 10

	validates :title, presence: true
	validates :body, presence: true, length: { minimum: 10 }
end
