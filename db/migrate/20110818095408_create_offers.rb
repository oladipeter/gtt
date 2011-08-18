class CreateOffers < ActiveRecord::Migration
  def self.up
    create_table :offers do |t|
      t.string :title
      t.text :content
      t.string :user
      t.string :government
      t.string :email
      t.string :phone

      t.timestamps
    end
  end

  def self.down
    drop_table :offers
  end
end
