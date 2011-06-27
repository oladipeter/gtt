class System < ActiveRecord::Base
  has_many :articles
  has_many :advices
  has_many :admins
  has_and_belongs_to_many :users
end
