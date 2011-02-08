class Photo < ActiveRecord::Base
  belongs_to :bid
  has_attached_file :photo
end
