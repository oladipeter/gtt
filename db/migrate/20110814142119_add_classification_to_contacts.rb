class AddClassificationToContacts < ActiveRecord::Migration
  def self.up
    add_column :contacts, :classification, :text
  end

  def self.down
    remove_column :contacts, :classification
  end
end
