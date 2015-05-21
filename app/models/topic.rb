class Topic < ActiveRecord::Base
  has_many :comments
  belongs_to :subforum

  validates :title, :allow_nil=>false,:presence=>true
  validates :subforum_id, :presence=>true
  validates :content, :allow_nil=>false,:presence=>true

end