class AddDescriptionToContacts < ActiveRecord::Migration
  def self.up
    add_column :contacts, :description, :text
  end

  def self.down
    remove_column :contacts, :description
  end
end
