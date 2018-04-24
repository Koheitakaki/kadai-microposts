class FavoritesController < ApplicationController
  def create
    micropost = Micropost.find(params[:micropost_id])
    current_user.bookmark(micropost)
    flash[:success] = "お気に入りに登録しました"
    redirect_to current_user
  end
      
  def destroy
    micropost = Micropost.find(params[:micropost_id])
    current_user.unbookmark(micropost)
    flash[:success] = "お気に入りを解除しました"
    redirect_to current_user
  end
end
