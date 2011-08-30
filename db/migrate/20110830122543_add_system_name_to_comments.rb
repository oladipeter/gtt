class AddSystemNameToComments < ActiveRecord::Migration
  def self.up
    add_column :comments, :system_title, :string
  end

  def self.down
    remove_column :comments, :system_title
  end
end
