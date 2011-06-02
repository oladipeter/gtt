class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :confirmable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :full_name, :nick_name, :local_government, :flat_rate, :phone_number

  # Check the other columns

  # All of fields cant be blank!
  validates_presence_of :full_name, :nick_name, :local_government

  # Phone number must be a number
  validates_numericality_of :phone_number

end
