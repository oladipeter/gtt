class Offer < ActiveRecord::Base

  validates_presence_of :user
  validates_presence_of :government
  validates_presence_of :email
  validates_presence_of :phone
  validates_presence_of :content

end
