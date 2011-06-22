class CreateAdvices < ActiveRecord::Migration
  def self.up
    create_table :advices do |t|
      t.string :title
      t.text :short_description
      t.text :content
      t.integer :system_id
      t.timestamps
    end
  end

  def self.down
    drop_table :advices
  end
end
