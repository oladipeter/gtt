class Contact < ActiveRecord::Base
  has_attached_file :image, :styles => { :medium => "120x80>", :thumb => "80x60>" }

  has_many :users

end
