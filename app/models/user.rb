class User < ActiveRecord::Base
 has_secure_password

  validates :username, :uniqueness => true, :allow_nil => false
  validates :password, :presence => true
end
