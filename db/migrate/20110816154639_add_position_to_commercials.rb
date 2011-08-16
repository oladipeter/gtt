class AddPositionToCommercials < ActiveRecord::Migration
  def self.up
    add_column :commercials, :position, :string
  end

  def self.down
    remove_column :commercials, :position
  end
end
