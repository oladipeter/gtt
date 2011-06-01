class AddExtraColumnsToDeviseSignUp < ActiveRecord::Migration
  def self.up
    add_column :users, :full_name, :string
    add_column :users, :nick_name, :string
    add_column :users, :local_government, :string
    add_column :users, :phone_number, :integer
    add_column :users, :product, :string
    add_column :users, :flat_rate, :boolean # atalanydij
  end

  def self.down
    remove_column :users, :full_name
    remove_column :users, :nick_name
    remove_column :users, :local_government
    remove_column :users, :phone_number
    remove_column :users, :product
    remove_column :users, :flat_rate
  end
end
