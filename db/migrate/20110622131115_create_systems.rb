class CreateSystems < ActiveRecord::Migration
  def self.up
    create_table :systems do |t|
      t.string :name
      t.text :description
      t.timestamps
    end

    System.create :name => "MikroVoks"
    System.create :name => "MikroKam"
    System.create :name => "seQUEnce"
    System.create :name => "EDtR"
    System.create :name => "MvMonitor"
    System.create :name => "Digirat"

  end

  def self.down
    drop_table :systems
  end
end
