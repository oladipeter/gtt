class AddPositionToArticles < ActiveRecord::Migration
  def self.up
    add_column :articles, :position, :string
  end

  def self.down
    remove_column :articles, :position
  end
end
