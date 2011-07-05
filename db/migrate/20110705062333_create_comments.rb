class CreateComments < ActiveRecord::Migration
  def self.up
    create_table :comments do |t|
      t.string :user
      t.text :content
      t.integer :supmessage_id
      t.timestamps
    end
  end

  def self.down
    drop_table :comments
  end
end
