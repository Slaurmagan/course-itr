class Chapter < ApplicationRecord
  belongs_to :post
  has_rich_text :content
  has_many :chapter_likes

  def liked?(user)
  	ChapterLike.exists?(chapter_id: self.id,user_id: user.id)
  end
end
