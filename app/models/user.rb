class User < ActiveRecord::Base

  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable

  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :confirmable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model

  attr_accessible  :email, :password, :password_confirmation, :remember_me,
  :full_name, :nick_name, :local_government, :phone_number,
  :mikrovoks, :mikrokam, :sequence, :edtr, :mvmonitor, :digirat, :flat_rate,
  :mikrovoks_flat_rate, :mikrokam_flat_rate, :sequence_flat_rate, :edtr_flat_rate, :mvmonitor_flat_rate, :digirat_flat_rate, :contact_id, :system_ids

  # All of fields cant be blank!

  validates_presence_of :full_name
  validates_length_of :full_name, :nick_name, :minimum => 5
  validates_presence_of :nick_name, :local_government

  # Phone number must be a number..

  validates_numericality_of :phone_number

  # Connectors

  belongs_to :contact
  has_many :supmessages
  has_and_belongs_to_many :systems

  def self.search(search)
    if search
      find(:all, :include => :supmessages, :conditions => ['full_name ILIKE ? OR local_government ILIKE ? OR email ILIKE ?', "%#{search}%", "%#{search}%", "%#{search}%"] )
    else
      find(:all)
    end
  end

end
