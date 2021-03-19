class Comment < ApplicationRecord
  belongs_to :article # Declares that a comment will be associated with a single article
end
