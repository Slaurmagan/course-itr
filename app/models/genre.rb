class Genre < ApplicationRecord
	has_many :post_genres
	has_many :posts, through: :post_genres
end
