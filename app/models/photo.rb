class Photo < ApplicationRecord
   validates :user_id, :presence => true

   has_many(:commments, :class_name => "Comment", :foreign_key => "photo_id")
   has_many(:likes, :class_name => "Like", :foreign_key => "photo_id")
   has_many :fans, :through => :likes, :source => :user
end
