class AddNameToAdmin < ActiveRecord::Migration
  def self.up
    add_column :admins, :name, :string
    Admin.create :email => "oladi.peter@globomax.hu", :password => "va1Rooke", :name => "superadmin"
  end

  def self.down
    remove_column :admins, :name, :string
  end
end
