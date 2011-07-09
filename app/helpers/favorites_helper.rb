module FavoritesHelper
  def favorite(obj)
    if !obj.favorites.empty?
      form_tag(favorite_path(obj.favorites.first), :method => :delete  , :remote => "true",:id => "favorite-#{obj.id}" ) do
         image_submit_tag("favorite.png")
      end
    else
      form_tag(url_for(:controller => "favorites",:action => "create", \
       :favoritable => {:favoritable_id => obj.id,:favoritable_type => obj.type} ),:id => "favorite-#{obj.id}", :remote => "true") do
         image_submit_tag("not_favorite.png")
      end
    end
    
  end  
    
end
