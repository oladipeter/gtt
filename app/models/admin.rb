class Admin < ActiveRecord::Base

  belongs_to :system
  has_and_belongs_to_many :systems
  has_and_belongs_to_many :supmessages


  has_attached_file :image, :styles => { :medium => "120x80>", :thumb => "80x60>" }

  devise :database_authenticatable, :trackable, :timeoutable, :lockable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :image, :system_ids, :name

  validates_uniqueness_of :email
  validates_presence_of :email

end
