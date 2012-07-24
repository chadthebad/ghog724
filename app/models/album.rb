class Album < ActiveRecord::Base

  has_many :photos
  belongs_to :user

  attr_accessible :title, :user_id

end
