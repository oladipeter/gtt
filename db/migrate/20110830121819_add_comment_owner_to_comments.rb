class AddCommentOwnerToComments < ActiveRecord::Migration
  def self.up
    add_column :comments, :comment_owner, :string
  end

  def self.down
    remove_column :comments, :comment_owner
  end
end
