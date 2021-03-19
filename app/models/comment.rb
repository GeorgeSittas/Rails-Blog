class Comment < ApplicationRecord
	include Visible # Module which provides visibility functionality for a comment

  belongs_to :article # Declares that a comment will be associated with a single article
end
