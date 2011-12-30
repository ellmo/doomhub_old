class User < ActiveRecord::Base
  
  #==========
  #= DEVISE =
  #==========
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  #========
  #= ATTR =
  #========
  attr_accessible :email, :login, :password, :password_confirmation, :remember_me

  #============
  #= VALIDATE =
  #============
  validates_presence_of :email, :login, :password

  #==========
  #= PUBLIC =
  #==========
  def self.find_for_database_authentication(conditions={})
    self.find_by_login conditions[:login] or
    self.find_by_email conditions[:login]
  end
  
end
