class AddStartAndEndDateToArticles < ActiveRecord::Migration
  def self.up
    add_column :articles, :start_date, :datetime
    add_column :articles, :end_date, :datetime
  end

  def self.down
    remove_column :articles, :start_date
    remove_column :articles, :end_date
  end
end
