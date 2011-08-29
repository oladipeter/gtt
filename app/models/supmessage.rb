class Supmessage < ActiveRecord::Base

  cattr_reader :per_page
  @@per_page = 5

  belongs_to :user
  has_and_belongs_to_many :admins
  has_many :comments

end
