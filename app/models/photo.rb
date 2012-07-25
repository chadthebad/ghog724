class Photo < ActiveRecord::Base
  
  belongs_to :album
  belongs_to :user
  
  attr_accessible :album_id, :title

end
