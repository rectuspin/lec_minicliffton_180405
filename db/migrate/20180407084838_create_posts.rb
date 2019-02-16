class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :name
      t.string :title
      t.text :content
      t.string :option
      t.string :category2
      t.timestamps null: false
    end
  end
end