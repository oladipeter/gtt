class AddExtraColumnsToDeviseSignUp < ActiveRecord::Migration
  def self.up
    # Elerhetosegek
    add_column :users, :full_name, :string
    add_column :users, :nick_name, :string
    add_column :users, :local_government, :string
    add_column :users, :phone_number, :string
    # Megvasarolt rendszerek
    add_column :users, :mikrovoks, :boolean
    add_column :users, :mikrokam, :boolean
    add_column :users, :sequence, :boolean
    add_column :users, :edtr, :boolean
    add_column :users, :mvmonitor, :boolean
    add_column :users, :digirat, :boolean
    # Atalanydij
    add_column :users, :mikrovoks_flat_rate, :boolean, :default => false
    add_column :users, :mikrokam_flat_rate, :boolean, :default => false
    add_column :users, :sequence_flat_rate, :boolean, :default => false
    add_column :users, :edtr_flat_rate, :boolean, :default => false
    add_column :users, :digirat_flat_rate, :boolean, :default => false

    # Contact kapcsolat
    add_column :users, :contact_id, :integer

  end

  def self.down
    remove_column :users, :full_name
    remove_column :users, :nick_name
    remove_column :users, :local_government
    remove_column :users, :phone_number
    # Megvasarolt rendszerek
    remove_column :users, :mikrovoks
    remove_column :users, :mikrokam
    remove_column :users, :sequence
    remove_column :users, :edtr
    remove_column :users, :mvmonitor
    remove_column :users, :digirat
    # Atalanydij
    remove_column :users, :mikrovoks_flat_rate
    remove_column :users, :mikrokam_flat_rate
    remove_column :users, :sequence_flat_rate
    remove_column :users, :edtr_flat_rate
    remove_column :users, :digirat_flat_rate
    # Contact kapcsolat
    remove_column :users, :contact_id
    
  end
end
