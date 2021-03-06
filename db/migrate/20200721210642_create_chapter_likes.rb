class CreateChapterLikes < ActiveRecord::Migration[6.0]
  def change
    create_table :chapter_likes do |t|
      t.belongs_to :chapter, null: false, foreign_key: true
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
