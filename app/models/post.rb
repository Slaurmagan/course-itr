class Post < ApplicationRecord
	belongs_to :user
	has_many :chapters,dependent: :destroy
	accepts_nested_attributes_for :chapters,allow_destroy: true
	has_one :post_genre
	has_one :genre,through: :post_genre

end
