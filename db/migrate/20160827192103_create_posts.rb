class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.belongs_to :user, foreign_key: true
      t.integer :likes, default: 0

      t.timestamps
    end
  end
end
