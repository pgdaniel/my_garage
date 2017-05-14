class FavoritesController < ApplicationController
  def index
    @favorites = current_user.user_favorites.map(&:generic_image)
  end
end
