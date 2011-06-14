class CreateContacts < ActiveRecord::Migration
  def self.up
    create_table :contacts do |t|
      t.string :name
      t.string :email
      t.integer :mobil
      t.integer :phone

      t.timestamps
    end
  end

  def self.down
    drop_table :contacts
  end
end
