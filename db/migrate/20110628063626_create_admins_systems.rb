class CreateAdminsSystems < ActiveRecord::Migration
  def self.up
    create_table :admins_systems, :id => false do |t|
      t.integer :admin_id
      t.integer :system_id
    end
  end

  def self.down
    drop_table :admins_systems
  end
end
