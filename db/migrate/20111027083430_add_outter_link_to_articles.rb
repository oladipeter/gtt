class AddOutterLinkToArticles < ActiveRecord::Migration
  def self.up
    add_column :articles, :outter_link, :string
  end

  def self.down
    remove_column :articles, :outter_link
  end
end
