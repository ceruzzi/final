class User < ActiveRecord::Base
  has_many :topics
  has_many :comments

  validates :username, :uniqueness =>true, :allow_nil=>false,:presence=>true
  validates :age, :presence=>true
end
