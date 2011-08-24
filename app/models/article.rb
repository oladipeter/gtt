class Article < ActiveRecord::Base
  belongs_to :system
  has_attached_file :image, :styles => { :medium => "160x120>", :thumb => "80x60>" }
end
