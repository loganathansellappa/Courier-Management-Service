class AdminUser < ActiveRecord::Base
	
	scope :check_role, where(:role => true)
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, 
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :name, :email, :password, :password_confirmation, :remember_me, :role
	validates_presence_of :password,:confirm_password
  validate :passwords_match,:if=>lambda{|user| user.password!=employee.confirm_password}
	
  protected
   def passwords_match
		errors.add(:password,"Passwords don't match")
	end
end
