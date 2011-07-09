class FavoritesController < ApplicationController
  
  before_filter :require_user
  
  def index
    @favorites = current_user.favorites
    @favorite_types = get_favorite_types
  end
  
  def create
    @favorite = Favorite.new(params[:favoritable])
    @favorite.user = current_user
    if @favorite.save
      respond_to do |format|
        format.html { redirect_to favorites_path }
        format.js
      end
    end
  end
  
  def destroy
    @favorite = Favorite.find(params[:id])
    if @favorite.destroy
      respond_to do |format|
        format.html { redirect_to favorites_path }
        format.js
      end
    end
  end
  
  def get_favorite_types
    favorite_types = []
    current_user.favorites.all.each { |f| favorite_types << f.favoritable_type}
    favorite_types.uniq
  end
  
end
