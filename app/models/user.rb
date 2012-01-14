class User < ActiveRecord::Base
  has_secure_password
  attr_accessible :first_name, :last_name, :email, :phone, :password, :password_confirmation

  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :email, :presence => true, 
    :format => { :with => email_regex }, 
    :uniqueness => { :case_sensitive => false }
  validates :first_name, :last_name, :presence => true, 
    :length => { :maximum => 50 }
  validates :password, :presence => true, :length => { :within => 4..20 }
end
