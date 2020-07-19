class CreateChapters < ActiveRecord::Migration[6.0]
  def change
    create_table :chapters do |t|
      t.string :title
      t.belongs_to :post, null: false, foreign_key: true

      t.timestamps
    end
  end
end
