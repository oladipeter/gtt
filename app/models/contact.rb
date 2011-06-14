class Contact < ActiveRecord::Base
  has_attached_file :image, :styles => { :medium => "160x120>", :thumb => "80x60>" }
end
