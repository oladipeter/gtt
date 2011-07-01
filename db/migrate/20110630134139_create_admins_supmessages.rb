class CreateAdminsSupmessages < ActiveRecord::Migration
  def self.up
    create_table :admins_supmessages, :id => false do |t|
        t.integer :supmessage_id
        t.integer :admin_id
      end
  end

  def self.down
    drop_table :admins_supmessages
  end
end
