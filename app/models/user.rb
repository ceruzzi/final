class User < ActiveRecord::Base
  has_many :topics
  has_many :comments

  has_secure_password

  validates :username, :uniqueness => true, :allow_nil => false
  validates :password, :presence => true
end
