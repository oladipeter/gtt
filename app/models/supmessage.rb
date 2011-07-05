class Supmessage < ActiveRecord::Base
  belongs_to :user
  has_and_belongs_to_many :admins
  has_many :comments
end
