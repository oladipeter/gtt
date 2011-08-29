class AddSortingToContacts < ActiveRecord::Migration
  def self.up
    add_column :contacts, :position, :integer
  end

  def self.down
    remove_column :contacts, :position
  end
end
