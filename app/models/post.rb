class Post < ApplicationRecord
	belongs_to :user
	has_many :chapters,dependent: :destroy
	accepts_nested_attributes_for :chapters,allow_destroy: true
end
