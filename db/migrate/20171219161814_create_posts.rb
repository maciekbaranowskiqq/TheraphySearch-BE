class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :content
      t.string :image
      t.string :owner_picture
      t.string :owner_name
      t.int :count_likes

      t.timestamps
    end
  end
end
