class MyLikesController < ApplicationController

   def index
      @photos = current_user.liked_photos
      render("my_likes/index.html.erb")
   end

end
