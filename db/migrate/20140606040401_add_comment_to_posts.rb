class AddCommentToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :comments_id, :integer
    add_index :posts, :comments_id
  end
end
