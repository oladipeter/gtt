class AddStatusFieldToSupmessage < ActiveRecord::Migration
  def self.up
    add_column :supmessages, :status, :string
  end

  def self.down
    add_column :supmessages, :status
  end
end
