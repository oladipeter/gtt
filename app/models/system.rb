class System < ActiveRecord::Base
  has_many :articles
  has_many :advices
  has_many :admins
end
