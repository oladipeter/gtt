class CreateCommercials < ActiveRecord::Migration
  def self.up
    create_table :commercials do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
  end

  def self.down
    drop_table :commercials
  end
end
