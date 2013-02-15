class StaticPagesController < ApplicationController
  def home
    if current_user
     @micropost = current_user.microposts.build if signed_in?
     @feed_items = current_user.feed.paginate(page: params[:page])
   end
 end
end
