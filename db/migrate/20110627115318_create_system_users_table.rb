class CreateSystemUsersTable < ActiveRecord::Migration
  def self.up
    create_table :systems_users, :id => false do |t|
        t.integer :system_id
        t.integer :user_id
      end
  end

  def self.down
    drop_table :systems_users
  end
end
