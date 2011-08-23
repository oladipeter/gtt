class Article < ActiveRecord::Base
  belongs_to :system
  has_attached_file :image, :styles => { :medium => "320x240>", :thumb => "80x60>" }
end
