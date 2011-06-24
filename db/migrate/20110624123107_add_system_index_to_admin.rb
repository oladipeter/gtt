class AddSystemIndexToAdmin < ActiveRecord::Migration
  def self.up
    add_column :admins, :system_id, :integer
  end

  def self.down
    remove_column :admins, :system_id
  end
end
