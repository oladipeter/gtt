class AddExtraColumnsToDeviseSignUp < ActiveRecord::Migration
  def self.up
    # Elerhetosegek
    add_column :users, :full_name, :string
    add_column :users, :nick_name, :string
    add_column :users, :local_government, :string
    add_column :users, :phone_number, :integer
    # Megvasarolt rendszerek
    add_column :users, :mikrovoks, :boolean
    add_column :users, :mikrokam, :boolean
    add_column :users, :sequence, :boolean
    add_column :users, :edtr, :boolean
    add_column :users, :mvmonitor, :boolean
    add_column :users, :digirat, :boolean
    # Atalanydij
    add_column :users, :flat_rate, :boolean
  end

  def self.down
    remove_column :users, :full_name
    remove_column :users, :nick_name
    remove_column :users, :local_government
    remove_column :users, :phone_number
    remove_column :users, :mikrovoks
    remove_column :users, :mikrokam
    remove_column :users, :sequence
    remove_column :users, :edtr
    remove_column :users, :mvmonitor
    remove_column :users, :digirat
    remove_column :users, :flat_rate
  end
end
