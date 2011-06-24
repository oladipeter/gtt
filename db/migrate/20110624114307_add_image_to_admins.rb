class AddImageToAdmins < ActiveRecord::Migration
  def self.up
    add_column :admins, :image_file_name,    :string
    add_column :admins, :image_content_type, :string
    add_column :admins, :image_file_size,    :integer
    add_column :admins, :image_updated_at,   :datetime
  end

  def self.down
    remove_column :admins, :image_file_name
    remove_column :admins, :image_content_type
    remove_column :admins, :image_file_size
    remove_column :admins, :image_updated_at
  end
end
