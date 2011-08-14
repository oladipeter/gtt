class AddPositionToSystems < ActiveRecord::Migration
  def self.up
    add_column :systems, :position, :integer
  end

  def self.down
    remove_column :systems, :position
  end
end
