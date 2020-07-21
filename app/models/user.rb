class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable,:lockable
  has_many :posts
  has_many :comments
  has_one_attached :avatar
  has_many :chapter_likes
end
