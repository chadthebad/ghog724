class User < ActiveRecord::Base
  
  has_many :albums
  has_many :photos
  
  attr_accessible :name, :password

end
