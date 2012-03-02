class CreateQuestions < ActiveRecord::Migration
  def self.up
    create_table :questions do |t|
      t.boolean :internet_gui         , :default => false
      t.boolean :settlement_marketing , :default => false
      t.boolean :press_conference     , :default => false
      t.boolean :culture_and_sport    , :default => false
      t.boolean :settlement_conference, :default => false
      t.boolean :corporate_session    , :default => false
      t.boolean :electioneering       , :default => false
      t.boolean :local_tv             , :default => false
      t.boolean :smart_tv             , :default => false
      t.boolean :good_solution        , :default => false
      t.integer :how_much
      t.string :name
      t.string :email
      t.string :address

      t.timestamps
    end
  end

  def self.down
    drop_table :questions
  end
end
