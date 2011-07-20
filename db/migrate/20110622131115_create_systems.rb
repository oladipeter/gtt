class CreateSystems < ActiveRecord::Migration
  def self.up
    create_table :systems do |t|
      t.string :name
      t.text :description
      t.string :title
      t.timestamps
    end

    System.create( :name => "MikroVoks", :title => "mikrovoks" )
    System.create( :name => "MikroKam", :title => "mikrokam" )
    System.create( :name => "seQUEnce", :title => "sequence" )
    System.create( :name => "EDtR", :title => "edtr" )
    System.create( :name => "MvMonitor", :title => "mvmonitor" )
    System.create( :name => "Digirat", :title => "digirat" )

  end

  def self.down
    drop_table :systems
  end
end
