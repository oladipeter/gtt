class AddUrlToSystems < ActiveRecord::Migration
  def self.up
    add_column :systems, :url, :string
  end

  def self.down
    remove_column :systems, :url
  end
end
