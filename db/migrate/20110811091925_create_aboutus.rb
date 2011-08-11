class CreateAboutus < ActiveRecord::Migration
  def self.up
    create_table :aboutus do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
  end

  def self.down
    drop_table :aboutus
  end
end
