class AddFullNameToSystem < ActiveRecord::Migration
  def self.up
    add_column :systems, :full_name, :string
  end

  def self.down
    remove_column :systems, :full_name
  end
end
