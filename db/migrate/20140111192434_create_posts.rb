class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :text
      t.text :video
      t.string :format
      t.string :length
      t.integer :price

      t.timestamps
    end
  end
end
