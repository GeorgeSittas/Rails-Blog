class Comment < ApplicationRecord
  belongs_to :article # Sets up an Active Record _association_
end
