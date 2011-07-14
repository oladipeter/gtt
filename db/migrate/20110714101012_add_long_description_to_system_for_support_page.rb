class AddLongDescriptionToSystemForSupportPage < ActiveRecord::Migration
  def self.up
    add_column :systems, :long_description, :text
  end

  def self.down
    remove_column :systems, :long_description
  end
end
